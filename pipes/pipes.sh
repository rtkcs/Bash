#/bin/bash!

echo Number of running processes:
ps aux |  wc -l

echo
echo Number of httpd servers:
ps aux | grep httpd | wc -l



ps aux >> ps.txt


# sort dir in reverse order
echo 
echo dir listing in reverse order
ls -l | sort -r


# count the number of files and dirs 
echo 
echo number of files and dirs
ls -A | wc -l


# cut the 2. column from data.txt
echo
echo cut the 2. column from data.txt
cat data.txt | cut -f 2 -d ' '


#END

