#! /bin/bash

echo "Welcome to my script, dear User!"
echo "We're reading the first line of file 'changelog.md' in a directory 'source'."
echo "Let's look how it should look like..."

# head takes the first lines from a file, and -n parameter used to specify how many lines should be extracted.
firstline=$(head -n 1 source/changelog.md)

# Split the string into an array
read -a splitfirstline <<< $firstline

# Accessing the value at index 1 in a $splitfirstline
version=${splitfirstline[1]}
echo "Your version of changelog is: " $version

echo 'Do you want to continue? (enter "1" for yes, "0" for no)'
read -p "Your reply: " versioncontinue


while [ $versioncontinue -ne 1 ] || [ $versioncontinue -ne 0 ]
do
    if [ $versioncontinue -eq 1 ]; then
        echo "We continue our script."
        echo "-----------------------"
        for filename in source/*
        do
            if [ "$filename" == "source/secretinfo.md" ]
            then
                echo "Not copying" $filename
            else
                echo "Copying" $filename
                cp $filename build/
            fi
        done
        # cp -rv source/* build/
        # rm -v build/secretinfo.md
        
        break
    elif [ $versioncontinue -eq 0 ]; then
        echo "Please come back when you are ready"
        break
    else
        echo "There are two options: 1 or 0"
        read -p "Enter your number: " versioncontinue
    fi
done

cd build/
listing=$(ls -a ./)
echo ""
echo "These are the files in dir: 'build/'"
echo $listing
echo ""
echo "Thank you for sticking with me until the end of the script. I really appreciate your efforts."
sleep 1
echo 'Script is completed. Exiting now...'
exit





