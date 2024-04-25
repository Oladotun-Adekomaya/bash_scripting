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

mynum=300

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

command=/usr/bin/htop

if [ -f $command ]
then
    echo "$command is available, let's run it..."
else
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y htop
fi

$command
