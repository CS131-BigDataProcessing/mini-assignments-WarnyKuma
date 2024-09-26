#!/bin/bash

TEMP=$1

if [ $TEMP -lt 55 ]
then
	echo "freezing"
elif [ $TEMP -gt 55 -a $TEMP -lt 67 ]
then
	echo "cold"
elif [ $TEMP -gt 67 -a $TEMP -lt 85 ]
then    
        echo "nice"
else
	echo "hot"
fi
