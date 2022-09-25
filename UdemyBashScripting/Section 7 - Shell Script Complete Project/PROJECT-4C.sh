#! /bin/bash


#! /bin/bash

# Recursivery delete hot-Folder with all contents
rm -r /hot-folder

# Creating hot-Folder
mkdir ./hot-folder

echo "  "
# Find All Directories in a Current Folder
for i in $(find . -type d)   ;
do

if [ "$i" != "./hot-folder" ]; then 

	echo "********** FOLDER  $i ***************** "

	for myfile in $i/* ;
	do

		if [ -f "$myfile" ]; then

			echo ">> The file inside is:  $myfile"
			check=$(grep -ni "spo" "$myfile")
			
			if [ -z "$check" ]; then
				echo "This file doesn't contain defined word. Emptied file. "
			else	
				echo "Specific word was found."

				# basename gives us the last part of the name
				# it is useful if we need to have last part of the path and not the whole path
				# $myfile is the whole path
				# $name_f will be the last part of the path
				name_f=$(basename "$myfile")

				cp "$myfile" ./hot-folder/"$name_f"
				echo "*******" >> hot-folder/"$name_f"
				echo "$check" >> hot-folder/"$name_f"
				echo "*******" >> hot-folder/"$name_f"
			fi
		fi

	done
	echo "---------------------------"
	echo "  "
fi

done