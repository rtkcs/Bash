#!/bin/bash
# Author:	rtakacs
# Date:		20140804


NUM=0
MAX=20

# -lt 	less then
# -le	less and equals then
# -gt	greater then

#while [ "$NUM" -lt "$MAX"  ]
while [ "$NUM" -le "$MAX" ]
#while [ "$NUM" -gt "$MAX" ]
do

	echo $NUM
	let "NUM += 1"

done


#END
