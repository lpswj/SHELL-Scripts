#!/bin/bash
#Program:
#		User inputs 2 integer numbers;program will cross these two numbers.

echo -e "You SHOULD input 2 numbers ,I will cross them!\n"
read -p "first number:" firstnum
read -p "second number:" secnum
total=$(($firstnum%$secnum))
echo -e "\nThe result of $firstnum x $secnum is ==>$total"

