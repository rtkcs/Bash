#!/bin/bash
# Author:	rtakacs
# Date:		20140805


# case


for country in USA Australia France Slovakia Cuba
do
	
	case $country in 
	USA )
		echo "Welcome to North America" ;;
	Australia )
		echo "Welcome to Australia" ;;
	France )
		echo "Welcome to France" ;;
	Slovakia )
		echo "Vitaj na Slovensku" ;;
	* )
		echo "Welcome to another land" $country ;;
	esac	

done



#END
