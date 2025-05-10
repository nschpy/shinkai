import torch
import evaluate
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR
from shinkai.core.loader import load_ift
from tqdm import tqdm
from shinkai.expirements.deepseek_base_expirement import DeepseekBaseExpirement


ds = load_ift(testSize=0.001)
print(ds)

exp = DeepseekBaseExpirement(dataset=ds)

exp.run()