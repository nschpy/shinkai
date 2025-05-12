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
You are documenting a Swift codebase. Given a function and a short description of where and how it is used, write a documentation comment that helps future developers understand its purpose.
Use ///-style Swift comments.
Include parameter and return descriptions, and emphasize intent over implementation.
Return only the comment and the function.

Function:

"""

class SmolLMBaseExpirement(Expirement):
    """Эксперимент с моделью SmolLM2‑1.7B.

    Запускаем инференс на тестовом наборе и считаем BLEU/ROUGE.
    """

    def __init__(self, dataset: DatasetDict):
        super().__init__(
            metrics=ExpirementMetrics(
                title="HuggingFaceTB/SmolLM2-1.7B",
                description="Эксперимент с инференсом модели HuggingFaceTB/SmolLM2-1.7B и оценкой BLEU/ROUGE.",
            )
        )
        self.modelName = "HuggingFaceTB/SmolLM2-1.7B"
        self.dataset = dataset

    # ------------------------------------------------------------------
    # helpers
    # ------------------------------------------------------------------
    @staticmethod
    def _format_prompt(instruction: str, inp: str | None) -> str:
        """Готовит промпт для модели."""
        return f"{instruction}{inp}\n## Documentation:\n" if inp and inp.strip() else instruction

    @staticmethod
    def _strip_prompt(prompt: str, text: str) -> str:
        """Удаляет только часть вывода, совпадающую с промптом.

        * Никакой дополнительной пост‑обработки: остаётся весь decoded‑текст
          после промпта, в точности как сгенерировала модель.
        * Работает, даже если модель вставила несколько переводов строки или
          "## Documentation:" прямо после промпта.
        """
        # Обрезаем всё до первого вхождения маркера «## Documentation:» —
        # чаще всего модель повторяет промпт до него.
        marker = "## Documentation:"
        idx = text.find(marker)
        if idx != -1:
            return text[idx + len(marker):].lstrip("\n")

        # Fallback: точное совпадение промпта (без ведущих пробелов/кавычек)
        prompt_clean = prompt.strip()
        pos = text.find(prompt_clean)
        if pos != -1:
            return text[pos + len(prompt_clean):].lstrip("\n")

        # Если ничего не нашли, вернём текст как есть — лучше полные данные,
        # чем случайно урезать.
        return text

    # ------------------------------------------------------------------
    # main entry
    # ------------------------------------------------------------------
    def run(self):
        """Инференс + BLEU/ROUGE на `self.dataset['test']`."""
        self.metrics.showOverview()

        # ── Загрузка модели ────────────────────────────────────────────
        device = "cuda" if torch.cuda.is_available() else ("mps" if torch.mps.is_available() else "cpu")
        model = AutoModelForCausalLM.from_pretrained(self.modelName, cache_dir=CACHE_DIR).to(device)
        tokenizer = AutoTokenizer.from_pretrained(self.modelName, cache_dir=CACHE_DIR)
        model.eval()

        bleu = evaluate.load("bleu")
        rouge = evaluate.load("rouge")

        preds, refs = [], []

        for sample in tqdm(self.dataset["test"], desc="Evaluating"):
            prompt = self._format_prompt(_instruction, sample["input"])
            inputs = tokenizer(prompt, return_tensors="pt").to(device)

            with torch.no_grad():
                gen_ids = model.generate(
                    **inputs,
                    max_new_tokens=256,
                    eos_token_id=tokenizer.eos_token_id,
                    pad_token_id=tokenizer.eos_token_id,
                    do_sample=True,
                    temperature=0.6,
                    top_p=0.95,
                )

            decoded = tokenizer.decode(gen_ids[0], skip_special_tokens=True)
            pred_text = self._strip_prompt(prompt, decoded)

            preds.append(pred_text)
            refs.append([sample["output"].strip()])

        bleu_res = bleu.compute(predictions=preds, references=refs, max_order=4, smooth=True)
        rouge_res = rouge.compute(predictions=preds, references=[r[0] for r in refs], use_stemmer=True)

        print_json(json.dumps({"BLEU": bleu_res, "ROUGE": rouge_res}, indent=2))

        self.metrics.add("BLEU", bleu_res["bleu"])
        self.metrics.add("ROUGE-L", rouge_res["rougeL"])
        self.metrics.add("PREDICTIONS", preds)
        self.metrics.add("REFERENCES", refs)

        self.metrics.save_json(
            path=f"./metrics/{self.modelName}-{datetime.now().isoformat(timespec='seconds')}.json"
        )
        return {"bleu": bleu_res, "rouge": rouge_res}
