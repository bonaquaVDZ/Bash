#! /bin/bash

# ALL files
collector=0
for item in ./*
do
	
	collector=$(( collector +1 ))
	
done

echo "The number of files in Derectory is $collector."



# TXT files
collectorTXT=0
for item in ./*.txt
do
	collectorTXT=$(( collectorTXT +1 ))
done

echo "The number of txt files in Directory is $collectorTXT."

# DOC files
collectorDOC=0
for item in ./*.doc
do
	collectorDOC=$(( collectorDOC +1 ))
done

echo "The number of doc files in Directory is $collectorDOC."

# SH Files
collectorSH=0
for item in ./*.sh
do
	collectorSH=$(( collectorSH +1 ))
done

echo "The number of script files in Directory is $collectorSH."

# ALL Directories
collectorDIR=0
for item in ./*.dir
do
	collectorDIR=$(( collectorDIR +1 ))
done

echo "The number of folders in Directory is $collectorDIR."
