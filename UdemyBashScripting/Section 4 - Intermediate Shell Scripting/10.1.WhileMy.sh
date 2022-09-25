#! /bin/bash

# Testing While Loop
# Ex 1
number1=2
while [ $number1 -lt 20 ];
do 
	echo "number is $number1"
	number1=$(( number1 * 2 + 1 ))
	
done

# One Line Code
number=2; while [ $number -le 25 ]; do echo "Number is $number"; number=$(( number * 2 + 2 )); done


# Factorial
# It is needful to call a filename with number for calculating factorial.
# It shows the calculations path in Bash "bash -x ./10.1.WhileMy.sh 3"
counter=$1
factorial=1
while [ $counter -gt 0 ]
do
   factorial=$(( $factorial * $counter ))
   counter=$(( $counter - 1 ))
done
echo "$factorial"