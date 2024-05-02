#!/bin/bash

# VARIABLES

#myname="Oladotun"
#age="40"

#echo "Hello, my name is $myname."
#echo "I'm $age years old"

#SUBSHELL - this is a way for you to save the output of a command to a variable the $(input your command here) is a subshell that allows 
#you to run commands and save the result in a variable

#files=$(pwd)
#echo $files

#now=$(date)
#echo "The system time and date is $now"

#name="Oladotun Adekomaya"
#now=$(date)

#echo "Hello $name"
#echo "The system time and date is"
#$now
#echo "Your username is: $USERNAME" #USERNAME is an environment/system variable

# MATHS FUNCTION IN BASH

#expr 10 + 20
#expr 10 - 20
#expr 10 \* 20
#expr 20 / 10

# IF STATEMENTS

#mynum=300

#if [ $mynum -eq 200 ] # equal
#then
#    echo "The condition is true"
#else
#    echo "The variable does not equal 200"
#fi

#if [  $mynum -ne 200 ] #not equal
#then
#    echo "The condition is true"
#else
#    echo "The variable does not equal 200"
#fi

# -gt means greater than

# HOW TO CHECK FOR FILES ON THE FILESYSTEM

#if [ -f ~/Desktop/bash_scripting/myscript.sh ] # to check for directories, we change -f to -d
#then
#    echo "The file exists."
#else
#    echo "The file does not exist"
#fi


# A SIMPLE SCRIPT TO CHECK IF A PACKAGE HTOP IS INSTALLED AND INSTALL IT IF NOT FOUND. AND ALSO IMMEDIATELY RUN IT

#program=htop

#if  command -v $program
#then
#    echo "$command is available, let's run it..."
#else
#    echo "$command is NOT available, installing it..."
#    sudo apt update && sudo apt install -y $program
#fi
#$program


# EXIT CODES - these are used to check if an operation was successful or not. exit code of zero means there was no error, any other number
# means there was an error when trying to execute the program

#package=htop

#sudo apt install -y $package >> package_install_results.log

#if  [ $? -eq 0 ] #$? is a system variable that stores the exit code of the program/command that just finish running.
#then
#   echo "$package has been succesfully installed."
#   echo "You can view $package here:"
#   which $package
#else
#   echo "$package wasn't successfully installed" >> package_install_failure.log
#fi


# WHILE LOOP

#myvar=1

#while [[ $myvar -le 10 ]]
#do
#   echo $myvar
#   myvar=$(($myvar +1))
#   sleep 0.5
#done

#while [ -f ~/Desktop/testfile  ]
#do
#   echo "As of $(date) the test file exists"
#   sleep 5
#done

#echo "As of $(date), the test file doesn't exist"


# FOR LOOP

#for n in {1..10}
#do
#   echo $n
#   sleep 1
#done

#echo "This is outside the script"

# DATA STREAMS

# There are 3 different types of data streams
# Standard output - this is the normal output that you get when a command is successful. Standard output is a number 1
# Standard error - this is the output you get when a command returns an error. Standard error is designated by 2. This number can be used
# during redirection.
# To redirect standard output we use either > or 1>, for standard error we use 2>, for both we use &>
# Standard Input - this collects/reads input from the user

# A simple script to collect the name of a user

#echo "Please enter your name:"
#read  myname #this line stores whatever the user entered in a variable called myname
#echo "Your name is: $myname"

# FUNCTIONS
# lets write a function to check for error

#check_error(){
#   if [ $? -ne 0]
#   then
#      echo "An error occured. Check your error log"
#   fi
#}



# SCHEDULING JOBS

# To schedule jobs, you need to install the at command
#logfile=~/Desktop/bash_scripting/logresult.log
#echo "the script ran at the following time: $(date)" > $logfile



# ARGUMENTS

echo "You typed this: $1"
