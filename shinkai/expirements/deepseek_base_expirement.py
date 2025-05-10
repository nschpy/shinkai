import torch
import evaluate
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR
from tqdm import tqdm

class DeepseekBaseExpirement(Expirement):
    """Эксперимент с базовой моделью DeepSeek-Coder 1.3 B.

    При желании можно доработать формат промпта, параметры генерации,
    либо добавить LoRA/QLoRA-дообучение — метод `run` отвечает только за
    inference и расчёт метрик на тесте.
    """

    def __init__(self, dataset: DatasetDict):
        super().__init__(
            metrics=ExpirementMetrics(
                title="deepseek-ai/deepseek-coder-1.3b-base",
                description="Эксперимент с инференсом модели deepseek-ai/deepseek-coder-1.3b-base и оценкой BLEU/ROUGE."
            )
        )

        self.modelName = "deepseek-ai/deepseek-coder-1.3b-base"
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

    # ---------------------------------------------------------------------
    # main entry
    # ---------------------------------------------------------------------
    def run(self):
        """Запуск инференса + расчёт BLEU/ROUGE на self.dataset['test']."""
        # 1. Обзор эксперимента
        self.metrics.showOverview()

        # 2. Загружаем модель и токенизатор
        device = "cuda" if torch.cuda.is_available() else "cpu"
        model = AutoModelForCausalLM.from_pretrained(self.modelName, cache_dir=CACHE_DIR).to(device)
        tokenizer = AutoTokenizer.from_pretrained(self.modelName, cache_dir=CACHE_DIR)
        model.eval()

        # 3. Метрики BLEU и ROUGE (evaluate >= 0.4)
        bleu = evaluate.load("bleu")
        rouge = evaluate.load("rouge")

        preds, refs = [], []

        # 4. Генерация ответов для тестового набора
        for sample in tqdm(self.dataset["test"], desc="Evaluating"):
            prompt = self._format_prompt(sample["instruction"], sample["input"])
            inputs = tokenizer(prompt, return_tensors="pt").to(device)

            with torch.no_grad():
                gen_ids = model.generate(
                    **inputs,
                    max_new_tokens=256,
                    do_sample=False,
                    pad_token_id=tokenizer.eos_token_id,
                )

            pred_text = tokenizer.decode(gen_ids[0], skip_special_tokens=True).strip()
            # Если модель дублирует промпт, отрежем его
            if pred_text.startswith(prompt):
                pred_text = pred_text[len(prompt):].strip()

            preds.append(pred_text)
            refs.append([sample["output"].strip()])

        # 5. Рассчитываем BLEU (Papineni) и ROUGE-L
        bleu_res = bleu.compute(predictions=preds, references=refs, max_order=4, smooth=True)
        rouge_res = rouge.compute(predictions=preds, references=[r[0] for r in refs], use_stemmer=True)

        # 6. Выводим и сохраняем
        print_json({"BLEU": bleu_res, "ROUGE": rouge_res})

        # Запишем в объект метрик краткую сводку
        self.metrics.add("BLEU", bleu_res["bleu"])
        self.metrics.add("ROUGE-L", rouge_res["rougeL"])
        self.metrics.save_json(path=f"./metrics/{self.modelName}/")

        return {"bleu": bleu_res, "rouge": rouge_res}