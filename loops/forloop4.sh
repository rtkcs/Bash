#!/bin/bash
# Author:	rtakacs
# Date:		20140805


#for arg in [list]; do action item done


PASSFILE="/etc/passwd"
COUNT=0

for user  in `cat $PASSFILE | cut -f 1 -d ':'`
do
	echo $user
	let "COUNT+=1"
done

echo Number of users in system: $COUNT

# echo the exit level, 0 == exited OK
echo $?

#END

