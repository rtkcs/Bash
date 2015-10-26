#!/bin/bash
# Author:	rtakacs
# Date:		20140804


NUM=100
MIN=20

#until [ condition-is-true  ];do command done

until [ "$NUM" -eq "$MIN" ]
do
	echo $NUM
	let "NUM -= 1"
	
	

done


#END
