#!/bin/bash
# Author:	rtakacs
# Date:		20140804



#until [ condition-is-true  ];do command done

#STATUS=1

until [ "$STATUS" -eq "0" ]
do
	
	ping -c 1 192.168.1.35	
	echo The host 192.168.1.35 is down
	STATUS=`echo $?`

done


#END
