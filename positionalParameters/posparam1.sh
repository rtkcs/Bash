#!/bin/bash
# Author: 	rtakacs
# Date:		20140807


BADPARAM=165

# echo number of positional parameters -> $#
echo "Number of positional parameters: $#"

if [ $# != 2  ]
then
	echo "This script requires 2 arguments"
	exit $BADPARAM  #will close the bash shell, if the script is started ./posparam1.sh -> bash instantiates a subshell, the exit occurs in a subshell
fi

echo "You entered 2 parameters: 1: $1	2: $2"

seq $1 $2


#END
