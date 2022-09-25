#! /bin/bash

# Within each folder, run a for loop on each file
for i in $(find . -type d);
do
	echo ">> This is the folder: $i"
	# Inside specific folder find all files
	for myfile in $i/*;
	do

		if [ -f "$myfile" ] ; then			
			echo "The file inside is:  $myfile"
		fi
		
	done
	echo "--------------"
	echo " "

done
