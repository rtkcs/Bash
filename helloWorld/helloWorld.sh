#!/bin/bash
# Date:		20140709
# Author:	rtakacs
# Purpose	Hello World
# this is a comment


# Variables
MESSAGE="Hello World"
MESSAGE2="This script belongs to me"

clear

date +%F\ %r 
echo hello world
echo "hello world"
echo 'hello world $dollar'
echo $MESSAGE
echo "$MESSAGE"
echo $MESSAGE2

# reading from the command line
echo
echo
echo What is your name?
read name
echo Hello $name !


# script name, current dir, time
echo
echo Script Name: `basename $0`
echo You are in the directory  $PWD
echo Your current local time is `date +%r` 





#END
