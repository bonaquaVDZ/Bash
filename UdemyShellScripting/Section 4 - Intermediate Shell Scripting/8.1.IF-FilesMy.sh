#! /bin/bash

# Assigning a variable

read -p ">>> Please enter the name of the file: " filename
echo "______________________"


# Check whether filename/directory exists or doesn't exist.
if [ -e $filename ]; then
	echo ">>> $filename exists."
	# open $filename
else
	echo "First Check Up: $filename doesn't exist."
	exit
fi


# Check if filename/directory doesn't exist.
if [ ! -e $filename ]; then
	echo "Second Check Up: $filename doesn't exist."
	exit
fi

# Check whether it is Directory or not
if [ -d $filename ]; then
	echo ">>> $filename is a Directory."
	# open $filename
else
	echo ">>> $filename isn't a Directory"
fi

# Check whether filename is readable or not. 
if [ -r $filename ]; then
	echo ">>> $filename is Readable."
else 
	echo ">>> $filename isn't Readable"
fi

# Check whether filename is executable or not. 
if [ -x $filename ]; then
	echo ">>> $filename is Executable."
else
	echo ">>> $filename isn't Executable."
fi

# Check whether filename is writable or not
if [ -w $filename ]; then
	echo ">>> $filename is Writable."
else
	echo ">>> $filename isn't Writable."
fi

# Check whether filename is empty or not.
if [ -s $filename ]; then
	echo ">>> $filename is Not Empty."
else
	echo ">>> $filename is Empty."
fi


# Check whether filename is regular or not.
if [ -f $filename ]; then
	echo ">>> $filename is a Regular File."
else
	echo ">>> $filename isn't Regular File."
fi


echo "______________________"
echo "Thank you a lot for checking yours files."