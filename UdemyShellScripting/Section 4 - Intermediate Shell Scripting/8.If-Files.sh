#! /bin/bash


read -p "give me the name of the file please " myfile

#File Exist 
if [ -e $myfile ]; then # -e means EXIST
	echo "$myfile  exists!"
	#open $myfile
else
	echo "$myfile Does Not Exists"
fi


### #File DOES NOT Exist 
if [ ! -e $myfile ]; then
	echo "$myfile  Does Not Exist!"
fi

### Directory
if [ -d $myfile ]; then # -d means DIRECTORY
	echo "$myfile is a Directory !"
	#open $myfile
else
	echo "$myfile is Not a Directory"
fi


### #File exists And is Readable  
if [ -r $myfile ]; then # -r means READABLE
	echo "$myfile is Readable !"
	#open $myfile
else
	echo "$myfile is Not Readable"
fi


### #File Exists and is Executable  
if [ -x $myfile ]; then # -x means EXECUTABLE
	echo "$myfile is Executable !"
	#open $myfile
else
	echo "$myfile is Not Executable"
fi

### #File Exists and it is NOT Empty
if [ -s $myfile ]; then # -s means NOT EMPTY
	echo "$myfile Not Empty !"
	#open $myfile
else
	echo "$myfile is Empty"
fi

echo "bye"