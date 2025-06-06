from datasets import load_dataset
from shinkai.constants import TEST_DATASET_LINK, RAW_IFT_LINK, CACHE_DIR, SEED

def load_ift(testSize = 0.05): 
    dataset = load_dataset("json", data_files=RAW_IFT_LINK, cache_dir=CACHE_DIR)["train"]
    split = dataset.train_test_split(
        test_size=testSize,
        seed=SEED,
        shuffle=True
    )
    return split

def test_dataset():
    dataset = load_dataset("json", data_files={"test": TEST_DATASET_LINK }, cache_dir=CACHE_DIR) 
    return dataset