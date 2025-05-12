from shinkai.core.expirement import ExpirementList
from shinkai.core.loader import load_ift
from shinkai.expirements.deepseek_base_expirement import DeepseekBaseExpirement
from shinkai.expirements.qwen_base_expirement import QwenBaseExpirement
from shinkai.expirements.smollm_base_expirement import SmolLMBaseExpirement

def main():
    iftDataset = load_ift(testSize=0.1)

    # Deepseek expirement list
    deepseek = ExpirementList(
        SmolLMBaseExpirement(dataset=iftDataset)
    )

    deepseek.run()


if __name__ == '__main__':
    main()
