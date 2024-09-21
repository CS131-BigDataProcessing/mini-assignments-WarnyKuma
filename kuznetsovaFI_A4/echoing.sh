# Activity 1

#!/bin/bash

#Printing time and date
echo "The time and date are: $(date)" 

#Printing logged-in users 
echo "Let's see who logged into the system: "
who

#Print current user and their home directory
echo "For $USER, the home directory is $HOME"


#Activity 2

NAME=$1
AMOUNT_OF_MONEY=$2

echo "My name is $NAME and I have \$$AMOUNT_OF_MONEY in my wallet."


#Activity 3

mathvar1=$[1+5]
mathvar2=$[$mathvar1*20]
mathvar3=10
mathvar4=$[$mathvar1*($mathvar2+$mathvar3)]

echo "Variable 1 is $mathvar1. Variable 2 is $mathvar2. Using $mathvar3 for Variable 3, our final Variable 4 is $mathvar4."


#Activity 4

floating=$(echo "scale=3; 4.5/1.7" | bc)
echo "Our floating variable is $floating"   #Displaying 3 decimal places
