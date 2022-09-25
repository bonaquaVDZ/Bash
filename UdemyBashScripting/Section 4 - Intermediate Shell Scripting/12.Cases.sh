 #! /bin/bash 
 ######## Automatically Created Script ######## 

echo "Selection 1: "
echo "Select an option... "
echo " type 1 to do A"
echo " type 2 to do B"
echo " type 3 to do C"
echo " type 4 to do D"
read choice

case $choice in
1)
		echo " >> You choose  A "
		;;
2)
		echo " >> You choose  B "
		;;
3)
 		echo " >> You choose  C "
 		;;
4)
 		echo " >> You choose  D "
 		;;
*)
 		echo " You are out of criteria. "
 		;;
esac


#########################################


echo "Selection 2: "
echo "Type word 'hello' or any filename with extension: "
read choice

case $choice in
"hello")
		echo " You typed hello "
		;;
*".txt")
		echo " It is txt file  "
		;;
*".jpg")
 		echo " It is jpg file "
 		;;
*".doc")
 		echo " It is doc file. "
 		;;
*)
 		echo " You chose incorrect extension or filename. "
 		;;
esac

#########################################


echo "******************************"
echo "Selection 3: "
echo "Please enter characters from 0 to 9 or any upper/lowercases: "
read char

case $char in
[0-9])
		echo " you typed a number between 0-9."
		;;
[a-z])
 		echo " you typed a lower case letter."
 		;;
[A-Z])
 		echo " you typed a upper case letter."
 		;;
*)
 		echo " You typed something that didn't pass to criteria. "
 		;;
esac

#########################################


echo "******************************"
echo "Please enter a number:  "
read number

case $number in
1[0-9])
		echo " you typed a number between 10-19"
		;;
3[4-9])
		echo " you typed a number between 34-39"
		;;
[2-4] | [7-9])
		echo " you typed a number 2-4 OR 7-9"
		;;		
*)
 		echo " You are out of criteria. "
 		;;
esac



