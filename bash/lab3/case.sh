#!/bin/bash

read -n 1 -p "Did you learn something today [Y/n]? " useranswer

echo
case "$useranswer" in
  y|Y )
    echo "Great!"
    ;;
  n|N )
    echo "Sad!"
    ;;
  * )
    echo "it would be polite to say y or n."
    ;;
esac
