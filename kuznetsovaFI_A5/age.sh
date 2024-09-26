#!/bin/bash

AGE=$1

if [ $AGE -lt 13 ]
then
	echo "child"
elif [ $AGE -lt 20 ]
then
	echo "teen"
elif [ $AGE -lt 65 ]
then
	echo "adult"
else
	echo "elderly"
fi
