#!/bin/bash

# Create an array named colours and give it the following data values: red, green, blue
# Create a hash named animals and give it the following data elements: key red - value cardinal,
#key green - value frog, key blue - value lobster
# Use echo to display all the elements of the colours array, both by using the index values, and by
#using @ as an index
# Do the same for the same for the animals array
# Create a variable named num and give it a value of 0
# Use echo to display the data from the colours array corresponding to the value of $num
#followed by the value from the animals hash which uses the colour from the colours array as a
#key to find an animal name e.g. red cardinal, green frog, blue lobster
# Create a script to define the array and hash as above, and ask the user for a number for the num
#variable to select a combination to print out

colours=("red" "green" "blue")

declare -A animals
animals=([red]="cardinal" [green]="frog" [blue]="lobster")

echo "My colours are: ${colours[*]}"
echo "the animals array contains: ${animals[red]}, ${animals[green]}, ${animals[blue]}."


read -p "What number do you want 0 to 2: " num


mycolour=${colours[$num]}
myanimal=${animals[$mycolour]}
echo "Number $num refers to a $mycolour $myanimal"
