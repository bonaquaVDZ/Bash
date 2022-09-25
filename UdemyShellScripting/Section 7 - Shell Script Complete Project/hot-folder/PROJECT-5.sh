#! /bin/bash


# Function that looking for a specific string in all files in all folders recursively.
# Create a hot-Folder with all files which contain this specific string.
# Add to all these files number of line where this string was found.
get_File(){

	# User input will be defined in a {Whole Program} below.
	local str="$1"
	local file="$2"


	# echo ">> The String you are looking for is: {$str} "
	echo ">> The File you are searching is: {$file} "

	check=$(grep -ni "$str" "$file")

	if [ -z "$check" ]; then
		echo "This file doesn't contain defined string. Emptied file. "
	else
		echo "Specific string was found. "
		local name_file=$(basename "$file")
		#echo "just the name is: $name_file"

		cp "$file" hot-Folder/"$name_file"
		echo "*******" >> hot-Folder/"$name_file"
		echo "$check" >> hot-Folder/"$name_file"
		echo "*******" >> hot-Folder/"$name_file"
	fi
}






###################### Whole Program ###################
rm -r /hot-folder
mkdir ./hot-Folder

echo "  "
echo "----- The String you are looking for is: {spo} ----- "
echo "  "

for i in $(find . -type d);
do

if [ "$i" != "./hot-folder" ]; then
	echo "************* THE FOLDER: $i ***********"
	for myfile in $i/*;
	do 													
		if [ -f "$myfile" ] ; then				#  			
			get_File "spo" "$myfile"			# Function
		fi 										#		
	done
fi	
	echo "------------------"
done
###################### Whole Program ###################







*******
43:echo "----- The String you are looking for is: {spo} ----- "
54:			get_File "spo" "$myfile"			# Function
*******
