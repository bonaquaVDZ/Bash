#!/bin/bash

# Part 1 - Welcome User
echo "----------------------------------------------------------------------------"
echo "Welcome dear User!"
read -p "Let's get to know each other. What is your first name? " first_name
read -p "What is your last name? " last_name
echo "I am happy to get to know you " $first_name $last_name
sleep 2
echo "Let me introduce what we're going to do in this 'Build Script'"
echo "We will create a release script to copy certain files from a source directory into a build directory. "
echo "We will also check the version of our 'changelog' file."
echo "Let's start our journey..."
echo "----------------------------------------------------------------------------"
sleep 3

# Part 2 - Checking the release version of Changelog.md
firstline=$(head -n 1 source/changelog.md)
read -a splitfirstline <<< $firstline
version=${splitfirstline[1]}
echo "Is your 'changelog' version up to date?"
echo "Version = " $version
echo "----------------------------------------------------------------------------"
sleep 1

# Part 3 - The question is whether the user will continue to execute the script or not. 
echo "Press 1 if you want to replase files from source directory to build"
echo "If you want to replace files press 1 otherwise 0, if not."
read -p "Please enter your number: " versioncontinue

while [ $versioncontinue -ne 1 ] || [ $versioncontinue -ne 0 ]
do
    if [ $versioncontinue -eq 1 ]; then 
      echo "----------------------------------------------------------------------------"
      echo "Process starts..."
      sleep 2
      echo "We are coping files from source directory into build."
      echo "----------------------------------------------------------------------------"
      break
      sleep 3
    elif [ $versioncontinue -eq 0 ]; then
      echo "----------------------------------------------------------------------------"
      echo "We are closing the script."
      echo "Please come back when you are ready"
      echo "Script quits..."
      echo "----------------------------------------------------------------------------"
      exit
    else
      echo "----------------------------------------------------------------------------"
      echo "You have entered a different character."
      echo "Keep in mind that there are only two options: 1 or 0."
      read -p "Enter your number: " versioncontinue
    fi
done

# Part 4 - Copying files from sources to the build directory, except for secretinfo.md
for files in source/*
do
  if [ $files != "source/secretinfo.md" ]; then
    cp $files build
    echo $files " is being copied into dir:build/"
  fi
done
echo "----------------------------------------------------------------------------"
sleep 3

# Part 5 - Display a list of files that the build directory contains. 
cd build/
echo ""
echo "These are the files in dir: 'build/'"
ls -a ./
echo ""
echo "Thank you for sticking with me until the end of the script. I really appreciate your efforts."
sleep 1
echo 'Script is completed. Exiting now...'
exit
