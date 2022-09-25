#! /bin/bash

# Function that shows current date
Date(){

	echo "Today is: "
	date
	echo "I wish you a great day!"
}

Greetings(){

	echo "Hello $1 and $2"
	echo "I know what are you going to do today, $1!"
	echo "Unfortunately, I don't know what are you planning today, $2!"
	
	return 35

}

echo "Script starting from these words..."
echo "---------------"

Date 
echo "---------------"

Greetings "Vadzim" "Julia"
echo "Greetings function returns also a number:  $? "
