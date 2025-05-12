import torch
import evaluate
import json
import regex as re
from datetime import datetime
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR
from tqdm import tqdm

_instruction = """
Write a Swift-style documentation comment (`///`) for the function below. The comment must describe the function’s purpose, parameters, and return value, using Apple's documentation conventions.

Only return the documentation comment and the function itself. **Do not use any Markdown formatting**, such as ``` or code blocks. Just plain Swift code with comments.

Function:

"""

class QwenBaseExpirement(Expirement):
    """Эксперимент с базовой моделью DeepSeek-Coder 1.3 B.

    При желании можно доработать формат промпта, параметры генерации,
    либо добавить LoRA/QLoRA-дообучение — метод `run` отвечает только за
    inference и расчёт метрик на тесте.
    """

    def __init__(self, dataset: DatasetDict):
        super().__init__(
            metrics=ExpirementMetrics(
                title="Qwen/Qwen3-1.7B",
                description="Эксперимент с инференсом модели Qwen/Qwen3-1.7B и оценкой BLEU/ROUGE."
            )
        )

        self.modelName = "Qwen/Qwen3-1.7B"
        self.dataset = dataset

    # ---------------------------------------------------------------------
    # helpers
    # ---------------------------------------------------------------------
    @staticmethod
    def _format_prompt(instruction: str, inp: str | None) -> str:
        """Формируем промпт.
        При необходимости замените шаблон на свой (например, добавьте теги <|system|>)."""
        if inp and inp.strip():
            return f"{instruction}\n{inp}"
        return instruction

    @staticmethod
    def _extract_assistant(decoded: str) -> str:
        """Возвращает только последний ответ ассистента из ChatML‑транскрипта.

        Корректно работает как с полным ChatML‑выводом, так и с вариацией,
        где специальные токены удалены и остаются только маркеры ролей
        `user`/`assistant`.
        """
        # Сначала пробуем извлечь блок <|im_start|>assistant ... <|im_end|>
        blocks = re.findall(
            r"<\|im_start\|>assistant\s*(.*?)<\|im_end\|>",
            decoded,
            flags=re.DOTALL,
        )
        if blocks:
            return blocks[-1].strip()

        # Если специальные токены были удалены, ищем по ключевому слову `assistant`
        last_idx = decoded.rfind("assistant")
        if last_idx != -1:
            return decoded[last_idx + len("assistant"):].strip()

        # В худшем случае возвращаем исходную строку без изменений
        return decoded.strip()

    @staticmethod
    def _clean_output(text: str) -> str:
        """Удаляем технические теги <think></think>, строки с ``` и лишние пустые строки."""
        text = re.sub(r"<think>.*?</think>", "", text, flags=re.DOTALL)
        text = re.sub(r"^\s*```.*?$", "", text, flags=re.MULTILINE)
        text = re.sub(r"\n{2,}", "\n", text)  # схлопываем множественные перевод строки
        return text.strip()

    # ------------------------------------------------------------------
    # main entry
    # ------------------------------------------------------------------
    def run(self):
        """Запуск инференса + расчёт BLEU/ROUGE на `self.dataset['test']`."""
        self.metrics.showOverview()

        device = "cuda" if torch.cuda.is_available() else "mps" if torch.mps.is_available() else "cpu"

        model = AutoModelForCausalLM.from_pretrained(self.modelName, cache_dir=CACHE_DIR).to(device)
        tokenizer = AutoTokenizer.from_pretrained(self.modelName, cache_dir=CACHE_DIR)
        model.eval()

        bleu = evaluate.load("bleu")
        rouge = evaluate.load("rouge")

        preds, refs = [], []

        for sample in tqdm(self.dataset["test"], desc="Evaluating"):
            prompt = self._format_prompt(_instruction, sample["input"])
            messages = [{"role": "user", "content": prompt}]

            text = tokenizer.apply_chat_template(
                messages,
                tokenize=False,
                add_generation_prompt=True,
                enable_thinking=False,
            )

            inputs = tokenizer(text, return_tensors="pt").to(device)
            with torch.no_grad():
                gen_ids = model.generate(
                    **inputs,
                    max_new_tokens=256,
                    eos_token_id=tokenizer.eos_token_id,
                    pad_token_id=tokenizer.eos_token_id,
                    do_sample=True,
                    temperature=0.7,
                    top_p=0.95,
                )

            decoded = tokenizer.decode(gen_ids[0], skip_special_tokens=True)

            pred_text_raw = self._extract_assistant(decoded)
            pred_text = self._clean_output(pred_text_raw)

            preds.append(pred_text)
            refs.append([sample["output"].strip()])

        bleu_res = bleu.compute(predictions=preds, references=refs, max_order=4, smooth=True)
        rouge_res = rouge.compute(predictions=preds, references=[r[0] for r in refs], use_stemmer=True)

        result_json_str = json.dumps({
            "BLEU": bleu_res,
            "ROUGE": rouge_res,
        }, indent=2)
        print_json(result_json_str)

        self.metrics.add("BLEU", bleu_res["bleu"])
        self.metrics.add("ROUGE-L", rouge_res["rougeL"])
        self.metrics.add("PREDICTIONS", preds)
        self.metrics.add("REFERENCES", refs)

        self.metrics.save_json(path=f"./metrics/{self.modelName}-{datetime.now().isoformat(timespec='seconds')}.json")

        return {"bleu": bleu_res, "rouge": rouge_res}