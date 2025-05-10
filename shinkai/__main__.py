from shinkai.core.expirement import ExpirementList
from shinkai.core.loader import load_ift
from shinkai.expirements.deepseek_base_expirement import DeepseekBaseExpirement

def main():
    iftDataset = load_ift()

    # Deepseek expirement list
    deepseek = ExpirementList(
        DeepseekBaseExpirement(dataset=iftDataset)
    )

    deepseek.run()


if __name__ == '__main__':
    main()
