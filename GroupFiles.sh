#!/bin/bash

BASEDIR="/home/qusai/Desktop/files"    #Path to the files directory [Change it dependent on your path].

for file in $BASEDIR/*                 #for loop to read all files in the directory.
do
	IFS='-' read -ra LANG <<< "$file"  #Use IFS to get the language name before '-' character.
	if [ -d $LANG ]; then              #Check if there is a directory named as the language name.
		mv $file $LANG                 #If the directory exist, move the file from files directory to language name sub-directory.
	else
		mkdir $LANG                    #If the directory does not exist, create sub-directory named with the same of language name.
		mv $file $LANG                 #Move the file to the created directory.
	fi
done
