import torch
import evaluate
from rich import print, print_json
from shinkai.core.expirement import Expirement, ExpirementMetrics
from transformers import AutoModelForCausalLM, AutoTokenizer
from datasets import DatasetDict 
from shinkai.constants import CACHE_DIR
from shinkai.core.loader import load_ift
from tqdm import tqdm


ds = load_ift(testSize=0.005)
print(ds)

device = "mps" if torch.cuda.is_available() else "cpu"
model = AutoModelForCausalLM.from_pretrained("deepseek-ai/deepseek-coder-1.3b-base", cache_dir=CACHE_DIR).to(device)
tokenizer = AutoTokenizer.from_pretrained("deepseek-ai/deepseek-coder-1.3b-base", cache_dir=CACHE_DIR)

model.eval()

promt = """
Add comprehensive documentation to the following Swift function using the Swift DocComment style (///).
Include the following elements:
- A brief summary describing the purpose of the function in one sentence.
- A \"- Parameters\": section listing and explaining each parameter.
- A \"- Returns\": section describing the return value (if applicable).
Use clear, concise, and technical English consistent with Xcode documentation style.
When possible, include type hints in your descriptions (e.g., \"an integer\", \"a string array\").\nFor generic functions (<T>), explain the generic behavior in the parameter or summary.\nReturn the entire function with documentation added, formatted as a single Swift code block.\n

# Function:

func median(of numbers: [Double]) -> Double? {
    guard !numbers.isEmpty else { return nil }
    let sorted = numbers.sorted()
    let mid = sorted.count / 2
    return sorted.count % 2 == 0
        ? (sorted[mid - 1] + sorted[mid]) / 2
        : sorted[mid]
}

{tokenize}
"""
print(model.generation_config)
inputs = tokenizer(promt, return_tensors="pt").to(device)
outputs = model.generate(
    **inputs,
    max_new_tokens = 144
)

print(outputs)