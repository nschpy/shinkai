from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR

class DeepseekBaseExpirement(Expirement):
    
    def __init__(self):
        super().__init__(
            metrics = ExpirementMetrics(
                title="deepseek-ai/deepseek-coder-1.3b-base",
                description="Эксперимент с обучением модели deepseek-ai/deepseek-coder-1.3b-base."
            ))

        self.modelName = "deepseek-ai/deepseek-coder-1.3b-base"

    def run(self, dataset: DatasetDict | None = DatasetDict()):
        self.metrics.showOverview()

        if dataset is None:
            return print(f"- [bold red]Dataset is none for {self.modelName}  [/ bold red]")

        model = AutoModelForCausalLM.from_pretrained(
            self.modelName,
            cache_dir = CACHE_DIR)
        tokenizer = AutoTokenizer.from_pretrained(self.modelName, cache_dir = CACHE_DIR)
        
        model.eval()