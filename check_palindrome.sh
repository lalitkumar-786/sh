#!/bin/bash

chk_palindrome_brute_force() {
	len=${#string}
	for ((i=$len-1;i>=0;i--))
	do
		x+=${string:$i:1}
	done

}

chk_palindrome_direct() {
	x=$(echo $string | rev)
}


## user input
read -p "Enter the string: " string
chk_palindrome_direct


if [[ $x == $string ]]
then
	echo "Given string $string is PALINDROME."
else
	echo "Given string $string is NOT PALINDROME..."
fi
