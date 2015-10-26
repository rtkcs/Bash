# command substitution, in lspath.txt is 1 line /etc

echo list the dir in lspath.txt
echo
ls -l `cat lspath.txt`
echo

 
# command substitution, in lspaths.txt is more lines: /bin /etc
ls -l `cat lspaths.txt
echo`
du -h `cat lspaths.txt` > duLspaths.txt
echo
echo

# list the /etc into file
echo
echo create file etclisting.txt with the listing from /etc
ls -l `cat lspath.txt` > etclisting.txt

echo
echo
echo number of files in dir /etc from lspath.txt
ls -A `cat lspath.txt` | wc -l


# command substitution into variable $etcdir - type 1
echo
echo  commaoud substitution into variable \$etcdir
echo

etcdir=`ls -l /etc`

# enclose the variable into "" and the formatting is preserved
echo "$etcdir"
echo
echo


# command substitution into variable $etcdir2 - type 2
etcdir2=$(ls -l /etc)
echo "$etcdir2"



commandSubstCount=`ls -A | wc -l`
echo
echo $commandSubstCount

#if  $commandSubstCount -gt 10 then;.......
# 



