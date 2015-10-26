#!/bin/bash
# Author:	rtakacs
# Date:		20140805

# > /dev/null  -- redirecting the output to nothing
# :8080		glassfish is listening on port 8080
# :3306		mysql is listening on port 3306

##################################### glassfish is running on port :8080


# testing glassfish
netstat -ant | grep :8080  > /dev/null
GLASSFISHSTATUS="$?"
MYSQLSTATUS="$?"

if [ "$GLASSFISHSTATUS" -eq 0  ]
then
	echo Glassfish is running on port :8080

	#testing mysql
	netstat -ant | grep :3306 > /dev/null
	MYSQLSTATUS="$?"
	
	if [ "$MYSQLSTATUS" =  0 ]
	then
		echo mySQL is running on port :3306
	else	
		echo mySQL is not running on port :3306
	fi
else
	echo Glassfish is not running on port :8080	
fi



#END

