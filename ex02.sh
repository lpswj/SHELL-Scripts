#!/bin/bash
#Program
#	To calculate the days to your birthday

read -p "Please input your birthday (ex> 0709)" bday
now=`date +%m%d`
if [ "$bday" == "$now" ];then
		echo "Happy Birthday to you!!!"
elif [ "$bday" -gt "$now" ];then
		year=`date +%Y`
		total_d=$(($((`date --date="$year$bday" +%s`-`date +%s`))/60/60/24))
		echo "Your birthday will be $total_d later"
else
		year=$((`date +%Y`+1))
		total_d=$(($((`date --date="$year$bday" +%s`-`date +%s`))/60/60/24))
		echo "Your birthday wil be $total_d later"
fi

