#!/bin/bash
#comment: not part of the program and will not be executed
echo "Hello World"


HELLO="Hello Vijay"

echo $HELLO
#variables a & b
a=1
b=2
echo $a, $b
#arithmetic operations
c=$((a+b))
echo "a+b" is $c
echo "a-b" is $((a-b))
echo "a*b" is $((a*b))

myfiles=$(ls ~/ | wc -l)
echo $myfiles

#user input, get 2 numbers
echo "enter your first number:"
read firstnumber
echo "Enter your second number:"
read secondnumber

echo $firstnumber
echo $secondnumber

if [ $firstnumber -gt $secondnumber ]
    then
echo $firstnumber "is the larger number."
    else
echo $secondnumber "is the larger number"
fi

#for loop
aligners='bwa star bowtie tophat trinity'
for item in $aligners
  do
  echo $item
  done  

#function
function CTOF
    {
    ft=$(( $1*(9/5) + 32))
echo $ft
    }
#call function 
CTOF 37


