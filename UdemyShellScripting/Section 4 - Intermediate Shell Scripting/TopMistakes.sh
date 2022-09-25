#! /bin/bash


# Ex 1
# Make a practice to put var1 in quotes.
# Then will not appear an error: too many arguments.
# If you have spaces in a name, please use this tip.
var1=" It is ambiguous. "

if [ "$var1" == " It is ambiguous. " ]; then #var1 has spaces in a name. 
	echo "Correct."
else
	echo "Incorrect."
fi

echo "************************************"
# Ex 2
# If you have a name with a space. Use quotes for your variable.
for i in *;
do
	if [ -x "$i" ]; then
		echo "The file $i is Executable."
	fi
done


echo "************************************"
# Ex 3
# Variable Concatenation Problem

v1="ambiguous"
v2="representable"

echo "${v1}_issue_option1"
echo $v1"_issue_option2"

echo "$v1" "$v2""_issue_option3"
echo "${v1}${v2}"

echo "************************************"
# Ex 4
# Single Quotes VS Double Quotes

string="ambiguous"

echo 'It is a word $string'
echo "It is a word $string"



