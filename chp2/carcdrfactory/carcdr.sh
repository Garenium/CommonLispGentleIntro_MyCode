#!/bin/bash

#This script helps you to "see" car and cdr combo by printing out 
#the list's car and cdr one by one. It is done (in order) from right to left.

FILE=./input.lisp
if ! [[ -f "$FILE" ]]; then
   echo "$FILE creating..."
   > $FILE
fi

#prompt user for input
let input 
echo "Please write a lisp code: "
read input 

#write input to a file
echo "$input" > $FILE

#use the file to get awk output
output=$(awk '
match($0, /c[ad]*r/) {
   print substr($0, RSTART, RLENGTH)}
   ' $FILE)

echo "$output"

code=$(cat "$FILE")

# echo "$code"

