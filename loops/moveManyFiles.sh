#!/bin/bash
# Author: 	rtakacs
# Date:		20140807
# test to rename more files


BADARG=165
REQPARAM=2

if [ $REQPARAM != $#  ]
then
	echo $REQPARAM positional parameters are required
	echo "1: file start name, file*"
	echo "2: new file extension"
	exit $BADARG
fi

for file in `ls -A $1*`
do

	echo $file
	mv $file $file.$2

done


#END
