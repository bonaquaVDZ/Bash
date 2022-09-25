#! /bin/bash

# Run filename + counter
# Use "cat 10.2.WhileFactorial.sh" and "bash -x ./10.2.WhileFactorial.sh 3"
# It shows better how it calculates.

counter=$1
factorial=1
while [ $counter -gt 0 ]
do
   factorial=$(( $factorial * $counter ))
   counter=$(( $counter - 1 ))
done
echo "$factorial"