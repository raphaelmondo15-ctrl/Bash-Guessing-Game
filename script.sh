#! /bin/bash

#defining variable
max=10
min=1

#Generate a random variable between  1 to 10 
number=$(( $RANDOM % (max - min + 1) + min ))

read -p "Enter the number " x

if [[ $x -eq $number ]]; then
   echo "you win"
elif [[ $x -lt $min ]]; then
    echo "you lost"
elif [[ $x -gt $max ]]; then
    echo "you lost"
else
    echo "you lost, the random number was $number"
fi               