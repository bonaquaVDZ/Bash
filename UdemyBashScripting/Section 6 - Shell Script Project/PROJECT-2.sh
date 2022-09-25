#! /bin/bash


# Change the name of the folder that you want to search
for myfile in * ; 
do
	if [ -f "$myfile" ]; then

		# echo ">> This is a file: $myfile "
		# grep -ni "spo" "$myfile"
		 
		# Expanding the command grep to a new variable.
		check=$(grep -ni "spo" "$myfile")

		# Check if grep found something or 
		# Emptied string or filled.
		if [ -z "$check" ]; then
			echo ">> This file doesn't contain defined word. Emptied file."
		else
			echo ">> This file contains specific word."
		fi
	else
		echo ">> This is a directory: $myfile"
	fi
		echo "----------------------------"
done
