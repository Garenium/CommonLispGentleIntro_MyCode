#"!/bin/bash

#This script helps you to "see" car and cdr combo by printing out 
#the list's car and cdr one by one. It is done (in order) from right to left.

#check if the file input.lisp exists
FILE=./input.lisp
FILEC=./main.cpp
if ! [[ -f "$FILE" ]] && ! [[ -f "$FILEC" ]]; then
   echo "$FILE creating..."
   echo "$FILEC creaating..."
   > $FILE
   > $FILEC
fi

let input 

#allow input from terminal
#else from file directly
if [[ $1 == '-i' ]]; then
   #prompt user for input
   echo "Please write a lisp code: "
   read input 

   #write input to a file
   echo "$input" > $FILE
else 
   input=$(cat $FILE)
fi

lines=$(wc -l < input.lisp)
echo "$lines"

#check num of lines in $FILE
if (( $lines > 1 )); then
   echo "file \"$FILE\" has invalid number of lines"
   exit
fi

echo "input: $input"

#get the lisp function (car, cdr or any of the combo)
function=$(
awk 'match($0, /c[ad]*r/) {
   print substr($0, RSTART, RLENGTH)
}' $FILE)

echo "function: $function"

#start replacing characters one by one
#For example:
#caadr --> run
#caar ---> run
#etc.
#car ----> run
#stops

echo ""

g++ main.cpp -g

if [[ $1 = '-d' ]]; then
   gdb --args ./a.out "$input" "$function"
else
   ./a.out "$input" "$function"
fi


#clisp $FILE

##bash is not made for this...
#replacer=""
#for (( i = ${#function}-2; i > 1; i-- )); do
#   # echo "${function:$i:1}"
#   echo "$function"
#   echo ${input//${function:$i:1}/''} > $FILE #replace characters here
#   clisp $FILE
#done
