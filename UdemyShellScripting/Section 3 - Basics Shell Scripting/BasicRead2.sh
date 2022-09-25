#! /bin/bash
read -p "What is your name? " yourname
echo "Hello $yourname nice to meet you"

read -p "How old are you? " age
echo "It is fine to know that you are $age years old."

echo "Testing how to add a new one variable"

read -p "Let us create first variable: " variable1
echo "I creat this $variable1 and now I am going to do some simple math operations"

read -p "Let us create the second variable: " variable2

echo "Calculations of: $variable1 + $variable2 =" $(($variable1+$variable2))

read -p "Would you speak a little bit?" reply
echo "Sorry, but I need to stop this dialogue. "

echo Good bye!

echo ------------------------*


