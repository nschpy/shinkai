import torch
import evaluate
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict
from shinkai.constants import CACHE_DIR
from shinkai.core.loader import load_ift, test_dataset
from tqdm import tqdm
from shinkai.expirements.qwen_base_expirement import QwenBaseExpirement
from shinkai.expirements.smollm_base_expirement import SmolLMBaseExpirement
from shinkai.expirements.deepseek_sft_expirement import DeepseekSFFTExpirement
from shinkai.expirements.qwen_sft_expirement import QwenSFTExpirement
from shinkai.expirements.smollm_sft_expirement import SmolLMSFTExpirement 
from shinkai.expirements.deepseek_lora_expirement import DeepseekLoraExpirement
from shinkai.expirements.qwen_lora_expirement import QwenLoraExpirement
from shinkai.expirements.smollm_lora_expirement import SmolLMLoraExpirement
from shinkai.expirements.deepseek_prefix_expirement import DeepseekPrefixExpirement
from shinkai.expirements.qwen_prefix_expirement import QwenPrefixExpirement

ift = load_ift(testSize=0.005)

expirement = QwenPrefixExpirement(dataset=ift)

expirement.run()