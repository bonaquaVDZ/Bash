#! /bin/bash

# Create a loop on all items contained in a folder.
echo "--------------------------------"
for myfile in  * ; do
	
	# Create a loop only in files contained in a folder.
	#"$myfile" in quotes will consider all files with spaces as well. 
	if [ -f "$myfile" ]; then 
		echo ">> This is a file: $myfile "

	# Find a specific word in all files
	# -ni will show the line, where string was found (non-sensative case)
		grep -ni "spo" "$myfile" 
	
	else
		echo ">> $myfile  is not a file."
		echo " "
	fi
	echo "--------------------------------"
done

