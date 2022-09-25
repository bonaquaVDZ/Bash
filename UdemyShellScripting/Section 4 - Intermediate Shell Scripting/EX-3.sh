#! /bin/bash

# Creating txt and jpg files.
for i in {1..2}
do 
	touch "${i}file.txt"
	touch "file${i}.jpg"
done



echo ">>> Creating files..."
sleep 0.6

echo ">>> New added files are ..."
ls -t | head -4

echo "-----------------------------"


# Defining change for .jpg or .txt files.
# Simply saying what should be changed...
choice=""
while [ "$choice" != "t" -a "$choice" != "j" ];
do
	echo ">>> To rename .jpg files press j: "
	echo ">>> To rename .txt file press t: "

	read -p ">>> " choice
	echo "You typed $choice"
	if [ "$choice" == "t" -o "$choice" == "T" ]; then
		echo "All txt files will be changed."
	else
		echo "All jpg files will be changed."
	fi

done

echo "-----------------------------"

# Defining Prefix
read -p ">>> What prefix to add to these files: " pref
echo ">>> The prefix is $pref"

sleep 1.0

# Adding Prfix to .jpg or .txt files
if [ "$choice" == "t" ]; then
	for element in *.txt
	do 
		mv ${element} ${pref}${element}
	done
else
	for element in *.jpg
	do 
		mv ${element} ${pref}${element}
	done
fi


echo "Creating new prefix to files..."
sleep sleep 1.0

echo "-----------------------------"

echo "Last 4 created and modified files..."
sleep 1.0

ls -t | head -4

echo "-----------------------------"
echo "Script has successfuly done. "









