#! /bin/bash


# Creating a folder for collecting a files with specific word.
mkdir ./hot-Folder

for myfile in  * ;
do
	if [ -f "$myfile" ]; then

		check=$(grep -ni "spo" "$myfile")
		
		# Check if grep found something 
		if [ -z "$check" ]; then
			echo ">> This file doesn't contain defined word. Emptied file."
		else
			echo ">> This file contains specific word."

			# Copy the Desired file in already created folder.
			cp "$myfile" hot-Folder

			# Append to the copied file, the number of the line where the hot word is found
			echo "*******" >> hot-Folder/"$myfile"
			echo "*******" >> hot-Folder/"$myfile"
			echo "$check" >> hot-Folder/"$myfile"
			
		fi
	else
		echo "$myfile  is not a file"
		echo " "
	fi
		echo "----------------------------"
done

*******
*******
11:		check=$(grep -ni "spo" "$myfile")
