#!/bin/bash
#Program 
#		Repeat question until user input correct answer

while [ "$yn" != "yes" -a "$yn" != "YES" ]
do
		read -p "Please input yes/YES to stop this program:" yn
done
echo "OK!you input the correct answer."
