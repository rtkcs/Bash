#!/bin/bash
# Author: 	rtakacs
# Date:		20140807
# Purpose:	basic usage of select


PS3="Please select a choise: "
LIST="Kernel System Quit"


select i in $LIST
do
	if [ $i = "Kernel" ]
	then
		sudo watch tail /var/log/kern.log

	elif [ $i = "System" ]
	then	
		dmesg -T	

	elif [ $i = "Quit"  ]
	then
		clear
		break
	fi
#	break
done

unset PS3

#END
