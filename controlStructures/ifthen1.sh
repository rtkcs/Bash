#!/bin/bash
# Author:	rtakacs
# Date:		20140805


# [  ] - invokes the test command
# test 1 -eq 1; echo $? -> 0
# test linux = linux; echo $? -> 0
# test linux = ubuntu; echo $? -> 1

##################################### numerical comparrison
# -eq -> equal
if [ 1 -eq 1 ]  
then
	echo "1 -eq 1"
fi



if [ 1 -eq 2 ]
then
	echo "1 -eq 2"
else
	echo "1 not equals 2"

fi

#-le -> less and equal
if [ 1 -le 2 ]
then

	echo "1 -le 2" 
fi



##################################### string comparrison

if [ "linux" = "linux" ]
then
	echo linux = linux

fi



if [ "linux" = "ubuntu" ]
then
	echo "linux = ubuntu"

else
	echo "linux != ubuntu"
fi

#END

