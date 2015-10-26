#!/bin/bash
# Author:	rtakacs
# Date:		20140805


#for arg in [list]; do action item done


DIR="/etc"


for file  in `ls -A $DIR`
do
	echo $file
done


#END
