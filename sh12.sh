#!/bin/bash
#Program:
#		This script only accepts the following parameters:one,two or three

echo "This program will print your selection!"

case $1 in
		"one")
				echo "Your choice is ONE"
				;;
		"two")
				echo "Your choice is two"
				;;
		"three")
				echo "Your choice is three"
				;;
		*)
				echo "Usage $0 {one|two|three}"
				;;
esac
