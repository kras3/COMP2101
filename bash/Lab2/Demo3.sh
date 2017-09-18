#!/bin/bash

#Exercise 2

echo "hi
there
gorgeous"

echo -n "helb wold" |
sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |
tr "h" "H" |
tr "w" "W" |
awk '(print $1 "\0x20" $2 "\41"}'
