#!/bin/bash
#Program:
#		Check $1 is equal to "hello" by using case ... esac


case $1 in 
		"hello")
				echo "Hello,how are you?"
				;;
		"")
				echo "You MUST input parameters,ex>{$0,someword}"
				;;
		*)
				echo "Usage $0 {hello}"
				;;
esac
