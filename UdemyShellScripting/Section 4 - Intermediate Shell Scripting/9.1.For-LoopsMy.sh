#! /bin/bash

echo "----------------------"
echo "Testing how Loop works..."
echo "Loop from 1 to 5 starts: "
for i in {1,2,3,4,5}
do
	echo ">> $i"
done

echo "----------------------"


# Short way of writing loops
for i in {1..10}
do
	echo $i
done


echo "Loop through miscellaneous variables: "
for x in {1,"certain","represet your abilities...",-1e+.qw,"'+1e+'"}
do 
	echo ">> $x"
done

echo "----------------------"

echo "Loop with specific Stop: "
for y in {1,2,3,"represent","intelligence","stroll"}
do 
	echo ">> $y"
	if [ $y == "intelligence" ]; then
		echo "STOP: $y"
		break
	fi
done


echo "----------------------"

echo "Loop in Current Folder Through All Files: "
for i in ./*
do	
	# echo $i
	if [ -d $i ]; then
		echo "$i is a Directory."
		if [ -s $i ]; then
			echo "$i is Not Empty."
			echo "--------------"
		else
			echo "$i is Empty."
			echo "--------------"
		fi
	else
		echo "$i is a Regular File."
		if [ -s $i ]; then
			echo "$i file is Not Empty."
			echo "--------------"
		else
			echo "$i file is Empty."
			echo "--------------"
		fi
	fi
done

echo "Loops Processes Done."
