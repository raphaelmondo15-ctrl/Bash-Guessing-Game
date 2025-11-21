#! /bin/bash

#defining variable
max=10
min=1

#Generate a random variable between  1 to 10 
number=$(( RANDOM % (max - min + 1) + min ))
  
echo "You are welcome to the guessing game"
echo "guess a value from 1 to 10"

while (true); do

read -r -p "Enter the number " x

if [[ $x -eq $number ]]; then
   echo "you win"
   break
elif [[ $x -lt $min ]]; then
    echo "you lost"
    continue
elif [[ $x -gt $max ]]; then
    echo "you lost"
    continue
else
    echo "you lost, try again"
fi
done
echo "the win is $number"
          