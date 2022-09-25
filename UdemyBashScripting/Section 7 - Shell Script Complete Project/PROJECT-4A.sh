#! /bin/bash

# Temporary variable
# f=$(find . -type d)

# Run recursively through all folders
for folder in $(find . -type d);
do
		echo ">> This is the folder: $folder"
done
