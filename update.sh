#!/bin/bash

result=~/Desktop/bash_scripting/update_output.log
error=~/Desktop/bash_scripting/update_error.log
release_file=/etc/os-release

add_time(){
   date >> $1
   date >> $2
}
check_error(){
   if [ $? -ne 0 ]
   then
      echo "We encountered an error. Check $error to find out what went wrong."
   fi
}

if grep -q "Arch" $release_file
then
   #The host is based on Arch, run the pacman update command
   date >>$result >>$error
   sudo pacman -Syu >>$result 2>>$error
   if [ $? -ne 0 ]
   then
      echo "There was an error check $error to see what happened"
   fi
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
the reason this works is because of exit codes. this return an exit code of 0 if successful.
then
   # The host is based on Debian or Ubuntu,
   # Run the apt version of the command
   add_date $result $error
   sudo apt update >> $result 2>> $error
   check_error
   sudo apt dist-upgrade -y >> $result 2>> $error
   check_error
fi
