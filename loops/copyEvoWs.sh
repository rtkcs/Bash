#!/bin/bash
# Author:	rtakacs
# Date:		20140812
# Purpose:	copy EVO workspace from azelenekpc, from a coleague


#sudo mkdir -p /mnt/azelenakpc/workpaces 
#sudo mount.cifs //azelenakpc.hq.gratex.com/workspaces  /mnt/azelenakpc/workpaces/ -o "ro,nounix,domain=HQ,username=rtakacs,password=xxxxxx"

#cd /w/MVSR/NEV/EVO/MVSR.NEV.EVO-Trunk/MVSR/NEV/EVO/J2EE/was
#chmod -R u+rwx *


##### colors
RED='\e[0;31m'
GREEN='\e[0;32m'
YELLOW='\e[1;33m'
NC='\e[0m'	# No Color


##### pattern to look for in projects 
PATTERNS="EJSLocal*.java EJSRemote*.java EJSStateful*.java EJSStateless*.java _EJS*_Tie.java *_Stub.java"

## rtakacs 20140818
## REMOTE_WS="/mnt/azelenakpc/workpaces/MVSR/NEV/EVO/MVSR.NEV.EVO-Trunk/MVSR/NEV/EVO/J2EE/was/"
## REMOTE_DIRS=`ls -A $DIR`

REMOTE_WS="/mnt/azelenakpc/workpaces/MVSR/NEV/EVO/MVSR.NEV.EVO-Trunk/MVSR/NEV/EVO/J2EE/was/"
cd $REMOTE_WS
REMOTE_DIRS=`echo *`


LOCAL_WS="/w/MVSR/NEV/EVO/MVSR.NEV.EVO-Trunk/MVSR/NEV/EVO/J2EE/was"

JAVA_FILE={x%.java}

echo $REMOTE_DIRS

for remote_dir in $REMOTE_DIRS
do 
	
	if [[ $remote_dir != ".metadata" && $remote_dir != "New" && $remote_dir != "Folder" && $remote_dir != "(2)" ]]
	then
		
		if [ -d $REMOTE_WS/$remote_dir  ]
		then
			echo -en "${YELLOW}***************** PROJECT $remote_dir${NC}\n"
			cd $REMOTE_WS/$remote_dir 
	
			for pattern in $PATTERNS
			do
				echo -en "${GREEN}$pattern${NC}\n"
				echo  $PWD
				FILES=`find -name $pattern`
				
				for file in $FILES
				do
					LOCAL_FILE=$LOCAL_WS/$remote_dir/$file
					LOCAL_DIR=`dirname $LOCAL_FILE`
#					LOCAL_DIR=${LOCAL_FILE%.java}
					echo LOCAL_FILE=$LOCAL_FILE
					echo LOCAL_DIR=$LOCAL_DIR
					if [ ! -d $LOCAL_DIR  ]; then # if directory does not exist, then create it
						mkdir --parents $LOCAL_DIR
					fi
					cp --verbose  $file $LOCAL_FILE
				done

			done
		fi
	fi
	
done	


#END
