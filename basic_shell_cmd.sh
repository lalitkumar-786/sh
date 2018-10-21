#!/bin/bash

#Total arguments
echo $@

#Total no. of arguments
echo $#

#name of that file
echo $0

echo -----------------------
array1=(1 10 100)
array2=(2 20 200)

for i in ${array1[@]};
do
	echo $(($i+2))
done

echo String operations
x="lalit"
echo ${x:1:2}

#Replace first occurence only
echo ${x/al/qq}

#Replace all occurence 
echo ${x//al/qq}


#Decison making
x=123

if [ "$x" -gt 120 ]; then
	echo "yeah greater than 120"
fi


function TEST {
	echo "This is test function"
}

function TEST_ARG {
	echo TEst with arg $1
}

TEST
TEST_ARG $1


