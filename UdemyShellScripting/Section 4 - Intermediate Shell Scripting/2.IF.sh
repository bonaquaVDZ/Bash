#! /bin/bash

echo "Program that checks conditions..."
echo "  "

if [ 3 == 5 ]; then
	echo ">> First Condition Statement: The Same"
elif [ 20 == 20 ]; then
	echo ">> Second Contidion Statement: The Same"
	if [ 3 != 5 ]; then
		echo ">> Nested Condition Statement: 3 is not equal 5. Correctly."
	fi
		if [ 3 -lt 7 ]; then
			echo ">> Nested-Nested Condition Statement: 3 is less then 7. Accurately."
		fi
fi

echo " "
echo "Program continue..."

echo "   "
echo "One more test..."

num1=45
num2=30
num3=100

if [ $num1 -gt $num2 ]; then
	echo "$num1 is greater then $num2"
	
	if [ $num1 -gt $num3 ]; then
		echo "$num1 is greater then $num3"
	else
		echo "$num1 is not greater then $num3"
	fi

else
	echo "$num1 is not greater then $num2"
fi

echo "Test ends..."

# if EXPRESSION1; then
   # STATEMENT1
	
    # if EXPRESSION2; then
       #  STATEMENT2
	# fi

# fi


# 3 -eq 3  		3 = 3
# 3 -ne 4		3 is not 4
# 3 -gt 1		3 > 1
# 3 -lt 7		3 < 7

# 3 -ge 3 		3 >= 3
# 3 -le 3 		3 <= 3