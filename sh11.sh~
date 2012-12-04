#!/bin/bash
#Program:
#		Program to calculate the days 

read -p "Please input your demobilization date(YYYYMMDD ex>20121221):" date2

#check the number of input
date_d=$(echo $date2|grep '[0-9]\{8\}')
if [ "$date_d" == "" ]
then
		echo "You input the wrong date format..."
		exit 1
fi

#begin to calc the days
declare -i date_dem=`date --date="$date2"+%s`
declare -i date_now=`date +%s`
declare -i date_total_s=$(($date_dem-$date_now))
declare -i date_d=$(($date_total_s/60/60/24))
if [ "$date_total_s" -lt "0" ]
then
		echo "You had been demobilization before: "$((-1*$date_d))" ago "
else
		declare -i date_h=$(($date_d*24))
		echo "You will demobilize after $date_d days and $date_h hours."
fi




