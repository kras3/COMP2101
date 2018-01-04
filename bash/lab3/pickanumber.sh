#!/bin/bash

#this is pick a number script presentation 3

#get a random number from user to guess





#random number has to be within 1-10
mynum=$(( $RANDOM % 10 + 1))
#ask user to guess
read -p "Pick a number from 1-10, inclusive: " usernum

while true; do
  #if right tell them we are done
  if [ $mynum -eq "$usernum" ]; then
    echo "You got it!"
    exit
  else
    #if mynum  usernum
    if [ $mynum -gt "$usernum" ]; then
      echo "Too low. Guess Again."
    else
      echo "Too high. Guess Again"
    fi
  fi
  #if wrong keep asking
  read -p "Pick a number from 1-10, inclusive: " usernum
done
