#!/bin/bash
# Date:		05.08.2014		
# Author:	rtakacs
# Purpose:	function definition
# Created:	20140805
# Modified:



# global variables


function showdate(){
	date +%F
}


function showtime(){
	date +%r
}


function getuserinfo(){
	echo please enter your first and last name
	read firstname lastname
	echo Hello  $firstname $lastname !
}


showdate
showtime
getuserinfo

#END
