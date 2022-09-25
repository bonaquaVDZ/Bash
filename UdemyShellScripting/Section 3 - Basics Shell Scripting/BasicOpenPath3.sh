#! /bin/bash


read -p "What is your name? " yourname
echo "Hello $yourname nice to meet you"

echo "Tell me the path of the file you want to open: "
read filepath

open $filepath

# ************* COMMENT for the Student ***************
# If you are using the command line on a MAC Computer *
# intead of  "xdg-open"   use  the command   "open"   *
# See the lesson in Section 1: "Open, Xdg-open"		  *
# *************Comment for the Student*****************

echo ------------------------


