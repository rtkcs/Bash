#!/bin/bash
# Author:	rtakacs
# Date:		20140805


# [  ] - invokes the test command


for country in USA Australia France Slovakia
do
	
	if [ "$country" = "USA"  ]
	then	
		echo Welcome to the USA
	
	elif [ "$country" = "Slovakia" ]	
	then
		echo Vitaj na Slovensku
	else
		echo $country
	fi



done



#END
