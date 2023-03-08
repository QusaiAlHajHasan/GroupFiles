# GroupFiles
# Created By: Qusai AlHaj Hasan.

# Project description: You have 1000 text files (.txt) under one folder. Every 100 files are named with a specific language
   followed by its sequence number from 1 to 100 ( ex: arabic-1.txt, arabic-2.txt, ... to
   arabic-100.txt, english-1.txt, english-2.txt, ... to english-100.txt …etc).
						  
   You need to write a Bash/shell script to group files into sub-folders, each sub-folder to be named
   with its common language name.
						  
# Project solution: At first, I determined the path to the directory containing the files and then I went through all these 
   files using for loop after I extracted the language name by dividing the file name on the '-' character.
   After that, there are two possibilities:
			1- The first is that there is a sub-directory with the same name of this language, so I move the file into 
				 that sub-directory.
			2- The sub-directory related to the language does not exist, I create a new sub-directory with the same 
				 name as the language, and then I move the file to that sub-directory.
						  
# How to run:
  1- Open the terminal.
  2- Change the permission to allow the user to run the script using [sudo chmod 777 GroupFiles.sh].
  3- Run the script using [./GroupFiles.sh].
  
# Notes:
  1- You can run the script without change the permission using [sh GroupFiles.sh].
  2- Be sure to change the path of the files directory in line "3" dependent on where you are put the files directory.
