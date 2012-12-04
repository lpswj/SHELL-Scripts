#!/bin/bash
#Program:
#		Progam use test to check the filename

#1 read the filename
read -p "Please input a filename:" filename
test -z $filename && echo "You MUST input a filename "&&exit 0

#2 check if the file exist
test ! -e $filename && echo "Filename does not exist" && exit 0

#3 check the type of that filename,directory or file
test -f $filename &&filetype="regular file"
test -d $filename &&filetype="directory"
test -r $filename &&perm="readable"
test -w $filename &&perm="$perm writable"
test -x $filename &&perm="$perm executable"

#output the infromation
echo "The filename:$filename is a $filetype"
echo "And the permissions are :$perm"

