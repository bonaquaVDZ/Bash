#! /bin/bash


# It is not a correct way for this task to use If-Else Statements.
# It is much better to use For Loop for such as purposes. 

divisibleIF(){

	local number=$1
	echo "Your number is $number."
	# reminder=$((number % 2)) It is also possible to use variable insted of expression. 
	# We are using recursive operation.
	if [ $((number % 2)) == 0 ]; then
		echo "$number is divisible by 2."
		if [ $((number % 3)) == 0 ]; then
			echo "$number is divisible by either 2 and 3."
		else
			echo "$number is not divisible by 3, but divisible by 2."
		fi
			if [ $((number % 5)) == 0 ]; then
				echo "$number is divisible by either 2, 3, 5"
			else
				echo "$number is not divisible by 5, but divisible by either 2 and 3."
			fi
	else
		echo "$number is not divisible by 2."
		if [ $((number % 3)) == 0 ]; then
			echo "$number is not divisible by 2, but divisible by 3."
		else
			echo "$number is not divisible by either 2 and 3."
		fi
			if [ $((number % 5)) == 0 ]; then
				echo "$number is not divisible by either 2, 3, but divisible by 5."
			else
				echo "$number is not divisible by either 2, 3 and 5"
			fi
	fi

}




divisibleFOR(){

	local num=$1
	echo "You wrote number: $num"

	for i in {2,3,5,7,11,13,15,17}
	do

		if [ $(( $num%$i )) -eq 0 ]; then
			echo "Your number $num is divisible by $i."
		fi
	done
}




divisibleFOR 33

echo "----------------"
divisibleIF 4
