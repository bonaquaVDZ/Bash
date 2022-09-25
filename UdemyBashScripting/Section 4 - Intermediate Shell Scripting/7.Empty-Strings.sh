#! /bin/bash

# EX1
# Check if the string is empty.
read -p ">> First Try. Type something:  (Enter to exit)" str
if [ -z $str ]; then 
 	echo "this is an empty string"
	exit
fi

# EX2
# In this case we can write a string like "Something Something with space between"
read -p ">> Second Try. Type a sentence: " str
if [ -z "$str"  ]; then 
 	echo "this is an empty string"
	exit
fi
echo "moving on"



