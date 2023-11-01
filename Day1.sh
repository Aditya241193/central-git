#!/bin/bash

#This echo command prints message on the terminal. 

echo "Welcome to the Day1 of shell scriping challange"



#takes two variables (numbers) as input and prints their sum using those variables.

read -p "Enter 1st Number : " num1

read -p "Enter 2nd Number : " num2

echo " the sum of $num1 and $num2 is $(($num1+$num2))"

#three different built-in variables to display relevant information.


#this variable is used to print Random intergers form 0 to 32767

echo " $RANDOM :-this variable is used to print Random intergers form 0 to 32767"


#this built-in variable displays user ID i.e. 0 for root user and any other interger for other user
echo "$UID :-this built-in variable displays user ID i.e. 0 for root user and any other interger for other user"

#this built-in variable is used display process Id of the current process or shell
 
echo "$$ :-this built-in variable is used display process Id of the current process or shell"

#wildcards to list all the files with a specific extension in a directory.

echo " $( ls -l *.sh )"
