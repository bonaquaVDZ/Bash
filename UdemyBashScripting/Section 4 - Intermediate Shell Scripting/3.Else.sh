#! /bin/bash

echo "Hello User"

read -p "how old are you?    " age

if [ $age -gt 100 ]; then 
	echo "you are not very young"
elif [ $age -gt 20 ]; then
	echo "You are in great shape"
elif [ $age -le 20 ]; then
	echo "You are a teenager."
else
	echo "you are still very young"
fi




####################################

echo " "
echo ">> Let me guess what you type: "
read -p "Type a integer number between 1 and 4: " num

if [ $num == "1" ]; then
	echo "typed 1"
elif [ $num == "2"  ]; then
	echo "typed 2"
elif [ $num == "3"  ]; then
	echo "typed 3"	
elif [ $num == "4"  ]; then
	echo "typed 4"	
else 
	echo "none of the above"
fi

# 3 -eq 3  		3 = 3
# 3 -ne 4		3 is not 4
# 3 -gt 1		3 > 1
# 3 -lt 7		3 < 7

# 3 -ge 3 		3 >= 3
# 3 -le 3 		3 <= 3