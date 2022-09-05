# AdvOC
This repository is an implementation of paper: Data Quality Matters: **A Case Study of Obsolete Comment Detection**

## Requirements
- **openjdk11** for tree data generation
- `pip install -r requirements.txt`

## Data
The original dataset is downloaded from [here](https://drive.google.com/drive/folders/1FKhZTQzkj-QpTdPE9f_L9Gn_pFP_EdBi)

The cleaned dataset provided by us can be downloaded from [here](https://figshare.com/articles/dataset/Data_for_ICSE2023/20783818)

All scripts used for data processing are already in the `data_process` directory, you can use them to process original dataset or generate new datasets yourself.
```
cd data_process
./original_to_cleaned.sh
```

## Train a new model
First, modify the `DATA_PATH` in `constants.py`. Then run
```
CUDA_VISIBLE_DEVICES=0 python3 run_AdvOC.py --seq --tree --script --model_path=model
```

## Evaluate the model
```
CUDA_VISIBLE_DEVICES=0 python3 run_AdvOC.py --seq --tree --script --model_path=model --test_mode
```
We provide a trained model `classifier.pt`, together with the dataset. you can run it without training
```
CUDA_VISIBLE_DEVICES=0 python3 run_AdvOC.py --seq --tree --script --model_path=model --model_file=/path/to/data/classifier.pt --test_mode
```