#!/bin/bash
#Program:
#		Program shows the effect of shift function

echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==>'$@'"
shift
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==>'$@'"
shift 3
echo "Total parameter number is ==> $#"
echo "Your whole parameter is ==>'$@'"

