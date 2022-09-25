#! /bin/bash


echo "hello"
read -p "How old are you?  " age

if [ $age -eq "$age" ]; then
	echo "String Not Acceptable"
	exit
fi


if [ $age -lt 0 -o $age -ge 200 ]; then # -o means OR
	echo "Number Not Acceptable"
	exit
fi

if [ $age -ge 12 -a $age -le 20 ]; then
	echo "You are teenager. Your age is between 12 and 20"
	exit
fi


if [ $age -lt 10 -o $age -gt 100 ]; then
	echo "Your age is below 10 or above 100 years"
	exit
fi

if [ $age -gt 26 -a $age -lt 64 ]; then # -a means AND
	echo "you are between 26 and 64"
	exit
fi

echo "Ok let's contunue with the script:"

