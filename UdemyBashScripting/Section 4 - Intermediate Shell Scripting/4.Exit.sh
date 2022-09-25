#! /bin/bash

echo "Program processing..."
echo "Program processing..."
echo "Program processing..."
#exit
echo "Program processing..."
echo "Program processing..."

read -p ">> What is your name? >> " name
read -p ">> What is your surname? >> " surname
read -p ">> How old are you? >> " age
read -p ">> Where are you living? >> " living

echo ">> Let's us make brief summarize: 
	You are $name $surname.
	You are $age years old.
	You are living in $living"

read -p ">> The summarisation was correct? >>" reply

if [[ $reply == "Yes" || $reply == "yes" || $reply == 'yues' ]]; then
	echo "I am delightful to hear that everything is correctly."
elif [[ $reply == "No" || $reply == 'no' ]]; then
	echo "It is regretful to hear that I commited somewhere mistake."
else
	echo "Unknown command. Something wrong was written. "
fi


echo "Lets do another brief action..."
echo "Lets do another brief action..."
echo "Lets do another brief action..."
echo "Lets do another brief action..."
echo "Lets do another brief action..."

read -p ">> Enter some numer from -5 to 10: " numb

if [  $numb -le -5 ]; then
	echo "************************************************"
	echo "You cannot have this number!"
	echo "This number is out of range."
	echo "Sorry this number could mess up the Shell script"
	echo "The program have to quit now!"
	echo "************************************************"
	exit
fi

exit

echo " "
echo "Ok let's contunue with the script:"
echo "Program preparing..."
echo "Program preparing..."
