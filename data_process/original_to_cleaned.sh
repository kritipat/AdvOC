# This is a example file that changes the original dataset into the cleaned dataset and prepares data for training.

ORIGINAL_DATA='/path/to/original/dataset'  # TODO: modified this
ORIGINAL_UPDATE_DATA='/path/to/original/update/dataset'  # TODO: modified this
CLEANED_DATA='/path/to/cleaned/dataset'  # TODO: modified this to the dir you created to save cleaned dataset


python deduplicate.py --path=$ORIGINAL_DATA
python label_correction.py --path=$ORIGINAL_UPDATE_DATA
python generate_seq_dataset.py --old_path=$ORIGINAL_DATA --new_path=$CLEANED_DATA
python generate_tree_dataset.py --old_path=$ORIGINAL_DATA --new_path=$CLEANED_DATA
python build_vocabulary.py --path=$CLEANED_DATA
