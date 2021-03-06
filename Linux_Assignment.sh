#!/bin/sh

#Question 1
#write a shell script that prints “Shell Scripting is Fun!” on the screen

echo Shell Scripting is Fun!

#Question 2
#Modify the shell script from exercise 1 to include a variable. The variable will hold the contents of the message “Shell Scripting is Fun!”

message="Shell Scripting is Fun!"
echo  $message


#Question 3
#Store the output of the command “hostname” in a variable. Display “This script is running on _.” where “_” is the output of the “hostname” command.

hostname=$HOSTNAME
echo “This script is running on $hostname”

#Question 4
#Write a shell script that displays “man”,”bear”,”pig”,”dog”,”cat”,and “sheep” on the screen with each appearing on a separate line. Try to do this in as few lines as possible. 

CHARACTERS="man bear pig dog cat sheep"
 
for Value in $CHARACTERS
do
        echo "$Value"
done


#Question 5
#Write a shell script that displays, “This script will exit with 0 exit status.” Be sure that the script does indeed exit with a 0 exit status.

echo  “This script will exit with 0 exit status.”
exit 0


#Question 6
#Write a shell script that consists of a function that displays the number of files in the present working directory. Name this function “file_count” and call it in your script. If you use variable in your function, remember to make it a local variable.

function file_count()
 {
   local NUMBER_OF_FILE=$(ls -l | wc -l)
    echo The number of files are  "$NUMBER_OF_FILE"
 }
file_count
