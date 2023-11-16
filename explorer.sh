#!/bin/bash


echo "---------------------------------------------------
--------------------------------------------------------"
echo "Welcome to the Interactive File and Directory Explorer!"
echo "---------------------------------------------------
--------------------------------------------------------"
echo "Files and Directories in current path "
file=$(ls -lh | awk '{print $9,$5}')
echo "$file"

while [[ $len != 0 ]]
do
read -p "enter a line of text (press Enter without text to Exit) : " txt

len=${#txt}
if [[ $len != 0 ]]
then
echo "character count is equal to $len "
fi
done
	echo "EXITING THE interactive explorer........Good Bye........"




