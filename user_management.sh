#!/bin/bash



if [[ $1 == "[OPTIONS]" || $1 == "h" || $1 == "--help" ]]
then

echo "enter argument c ,or --create, to create a new user"
echo "enter argument d ,or --delete, to delete an existing user"
echo "enter argument r ,or --reset, to reset password of a existing user"
echo "enter argument l ,or --list,  to list all the accounts on a system"
echo "enter argument h ,or --help,  to display this help and exit"






elif [[ $1 == "c" || $1 == "--create" ]]
then
read -p "Enter the new user name: " user

olduser=$(sudo find /home/ -type d -name "$user" )

if [[ /home/$user == $olduser ]]
then
	echo "user already exist please enter new user"
else
 	 $(sudo useradd $user )
	$(sudo passwd $user )

        echo "User account $user created successfully"
fi






elif [[ $1 == "d" || $1 == "--delete" ]]
then
	read -p "enter name of the user you want to delete : " usr
        oldusr=$(sudo find /home/ -type d -name "$usr")
       if [[ /home/$usr == $oldusr ]]
       then
	       $(sudo userdel -fr $usr )
	       echo "User $usr deleted successfully"
       else
	       echo "User does not exist, please enter the valid user name"
       fi






elif [[ $1 == "r" || $1 == "--reset" ]]
then
	read -p "Enter the user name you want to reset the password " usrest
          
	$( sudo passwd $usrset )

	echo "password reset successfully"





elif [[ $1 == "l" || $1 == "--list" ]]
then
	echo "$(sudo awk -F ':' '$3>=1000 && $3<=9999 {print $1,$3}' /etc/passwd)"
 

else
	echo "enter valid Options"
fi



