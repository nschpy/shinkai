import torch
import evaluate
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR
from shinkai.core.loader import load_ift
from tqdm import tqdm
from shinkai.expirements.qwen_base_expirement import QwenBaseExpirement
from shinkai.expirements.smollm_base_expirement import SmolLMBaseExpirement
from shinkai.expirements.deepseek_sft_expirement import DeepseekSFFTExpirement

ift = load_ift(testSize=0.001)
print(ift)

expirement = DeepseekSFFTExpirement(dataset=ift)

expirement.run()