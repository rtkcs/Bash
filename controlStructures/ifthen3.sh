#!/bin/bash
# Author:	rtakacs
# Date:		20140805


# [  ] - invokes the test command
# -e  -> file  exists
# -d  -> directory exists
# -nt -> file is newer then
##################################### file exists 


if [ -e helloworld.sh ]
then
	echo File exists	
else
	echo File does not exists	
fi





FILE="ifthen3.sh"

if [ -e $FILE ]
then
	echo File exists \"$FILE\"
else
	echo File does not exists \"$FILE\"
fi

##################################### directory exists


DIR="test"

if [ -d $DIR ]
then
	echo Directory exists \"$DIR\"
else
	echo Directory does not exists \"$DIR\"
fi

##################################### whitch file is newer

FILE1="file1"
FILE2="file2"

if [ $FILE1 -nt $FILE2 ]
then
	echo File  \"$FILE1\" is newer #then \"$FILE2\"
else
	echo File  \"$FILE2\" is newer #then \"$FILE1\"
fi

#END

