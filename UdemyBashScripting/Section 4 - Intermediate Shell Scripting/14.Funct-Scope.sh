#! /bin/bash


FunctionLocalGlobal(){

	local var1="Eggs" # Variable works just inside function. It is local variable
		  var2="Salad" # Global variable

	echo "It is what inside variable. Function works properly."
	echo "Variable $var1 is local variable. Just inside function."
	echo "Variable $var2 is a global variable."
}


echo "Program starts here..."
echo "-----------------------"
FunctionLocalGlobal

echo "-----------------------"
echo "Outside :  $var1"
echo "Outside :  $var2"





