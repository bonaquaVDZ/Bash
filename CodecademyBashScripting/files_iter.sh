#!/bin/bash

files=/Users/vadzimramaniuk/Code/Bash/*

# We are going through all directories (not files)
for file in ${files[@]}
do
	echo $file
done

# Going through all files in a current directory
for file in *
do
	echo $file
done

