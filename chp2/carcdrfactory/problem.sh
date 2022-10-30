#!/bin/bash

lisp="(format t \"~a ~%\" (caddr '(1 4 62 6)))"
function="caddr"

replacer=""
for (( i = ${#function}-2; i > 1; i-- )); do
   echo "${function:$i:1}"
   # echo "$function"
   lisp=${lisp/${function:$i:1}/''} #replace characters here
   echo "$lisp"

done
