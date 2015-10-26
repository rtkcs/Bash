#!/bin/bash
# Author: 	rtakacs
# Date:		20140807
# Purpose:	basic usage of select


PS3="Please select a choise: "
LIST="Choise1 Choise2 Quit"


select i in $LIST
do
	if [ $i = "Choise1" ]
	then
		echo "\\nHello Choise1 !\\n"

	elif [ $i = "Choise2" ]
	then	
		echo "\nHello Choise2 !\n"
	elif [ $i = "Quit"  ]
	then
		clear
		break
	fi
#	break
done

unset PS3

#END
