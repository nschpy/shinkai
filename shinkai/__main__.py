from shinkai.core.expirement import ExpirementList
from shinkai.core.loader import test_dataset 
from shinkai.expirements.deepseek_base_expirement import DeepseekBaseExpirement
from shinkai.expirements.qwen_base_expirement import QwenBaseExpirement
from shinkai.expirements.smollm_base_expirement import SmolLMBaseExpirement
from shinkai.expirements.deepseek_sft_expirement import DeepseekSFFTExpirement
from shinkai.expirements.qwen_sft_expirement import QwenSFTExpirement
from shinkai.expirements.smollm_sft_expirement import SmolLMSFTExpirement
from shinkai.expirements.deepseek_lora_expirement import DeepseekLoraExpirement
from shinkai.expirements.qwen_lora_expirement import QwenLoraExpirement
from shinkai.expirements.smollm_lora_expirement import SmolLMLoraExpirement
from shinkai.expirements.deepseek_prefix_expirement import DeepseekPrefixExpirement

def main():
    dataset = test_dataset()

    sft_expirements = ExpirementList(
        DeepseekPrefixExpirement(dataset=dataset),
    )

    sft_expirements.run()


if __name__ == '__main__':
    main()
