#!/bin/bash
#Program
#	Use ping command to check the network's PC state

network="192.168.1"
for sitenu in $(seq 100 105)
do 
		ping -c1 -w1 ${network}.${sitenu}&>/dev/null && result=0 || result=1
		if [ "$result" == 0 ]
		then
				echo "Server ${network}.${sitenu} is UP."
		else
				echo "Server ${network}.${sitenu} is DOWN"
		fi
done
