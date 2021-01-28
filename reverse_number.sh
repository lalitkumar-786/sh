#!/bin/bash
################################################
#
#	Reverse a number using MODULO approach
#
###############################################
read -p "Enter a number : " NUMBER
rem=0
n=0
while(($NUMBER))
	do
		rem=$(($NUMBER%10))
		n=$(($n*10+$rem))
		NUMBER=$(($NUMBER/10));
	done
echo "The reverse number is : "$n

