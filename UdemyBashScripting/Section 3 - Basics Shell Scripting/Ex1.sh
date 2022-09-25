#! /bin/bash

# Create 2 .txt files: "1.txt" "2.txt"
# Inside 1.txt write the content of your pwd. in the long list format
# Ask the user what prefix he wants to give to the file "1.txt"
# Change the name of "1.txt" adding to it the prefix choosen by the

touch 1.txt 2.txt

ls -l >> 1.txt
read -p "Please define what prefix would you add to the file: " pref

mv -vi 1.txt ${pref}1.txt


echo "Changing prefix was successfully changed."
echo "See the result"
ls -l

echo "Done."
