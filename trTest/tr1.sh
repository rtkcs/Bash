#!/bin/bash
#Author:	rtakacs, CBTLinux
#Date: 		20140620
#Purpose:	Illustrate using tr in a script to convert upper to lower filenames


#touch FILE{1,2,3,4,5}
echo scritpName = `basename $0` 
#myScriptName= $scriptname


for i in `ls -A`
do	
	if [ "$i" = "$scriptName" ]
	then
	  echo "Sorry, can not rename myself"
#	elif [ $i != $myScriptName ]
	else
	  newname=`echo $i | tr a-z A-Z`
	  mv $i $newname
	fi


done


#END
