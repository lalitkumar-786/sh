#!/bin/bash

read -p "Enter a number : " NUM
s=0

while(($NUM))
	do
		temp=$(($NUM%10))
		s=$(($s+$temp))
		NUM=$(($NUM/10))
	done
echo " The sum of digits are : $s"
