#!/bin/bash
#Program
#	User input dir name, I find the permission of files.

read -p "Please input a directory :" dir
if [ "$dir" == "" -o ! -d "$dir" ];then
		echo "The $dir is NOT exist in your system."
		exit 1
fi

filelist=$(ls $dir)
for filename in $filelist
do
		perm=""
		test -r "$dir/$filename"&&perm="$perm readable"
		test -w "$dir/$filename"&&perm="$perm writable"
		test -x "$dir/$filename"&&perm="$perm executable"
		echo "The file $dir/$filename's permission is $perm"
done
