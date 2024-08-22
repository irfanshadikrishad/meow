#!/bin/bash

# Simple echo statements
echo "Hello World"
echo "Hello, world!"

# Function definitions
hello() {
    echo "Hello World from the hello function"
}

function hello_world() {
    echo "Hello World from the hello_world function"
}

# Calling functions with arguments
hello "arg1" "arg2" "arg3" "arg4"

# Variable declaration and usage
This_Is_A_Variable="/some/thing"
echo "This variable contains: $This_Is_A_Variable"

# Reading input
read -p "Enter your first name: " First_Name
echo "Your first name is: $First_Name"

# For loop
for (( c=1; c<=5; c++ )); do  
   echo "Welcome $c times"
done

# Case statement
read -p "Enter the name of a country: " COUNTRY
echo -n "The official language of $COUNTRY is "

case $COUNTRY in
  Lithuania)
    echo "Lithuanian"
    ;;
  Romania | Moldova)
    echo "Romanian"
    ;;
  Italy | "San Marino" | Switzerland | "Vatican City")
    echo "Italian"
    ;;
  Germany)
    echo "German"
    ;;
  France)
    echo "French"
    ;;
  *)
    echo "unknown"
    ;;
esac 

# While loop
a=7
while [ $a -gt 4 ]; do
    echo "Value of a: $a"
    ((a--))
done
echo "Out of the loop"

# Awk example
awk '{ print $0 }' filename.txt

# Sed example
sed -i "s/from/to/g" filename.txt

# Calling another function
hello_world

# Grep system information
echo "System Boot Time:"
echo systeminfo | grep "System Boot Time"

# Array usage
ARRAY=(one two three four five)
echo "First item: ${ARRAY[0]}"
echo "All items: ${ARRAY[@]}"
echo "Specific items: ${ARRAY[0]} and ${ARRAY[3]}"

# Appending and printing array elements
ARRAY+=("six" "seven")
echo "Extended array: ${ARRAY[@]}"

# Arithmetic operations
NUM1=10
NUM2=5
SUM=$((NUM1 + NUM2))
DIFF=$((NUM1 - NUM2))
MUL=$((NUM1 * NUM2))
DIV=$((NUM1 / NUM2))
MOD=$((NUM1 % NUM2))

echo "Sum: $SUM"
echo "Difference: $DIFF"
echo "Product: $MUL"
echo "Division: $DIV"
echo "Modulus: $MOD"

# Conditional statements
if [ $NUM1 -gt $NUM2 ]; then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is not greater than $NUM2"
fi

# File operations
touch testfile.txt
echo "This is a test file." > testfile.txt
cat testfile.txt

# Checking if a file exists
if [ -f testfile.txt ]; then
    echo "File testfile.txt exists."
else
    echo "File testfile.txt does not exist."
fi

# Cleanup
rm testfile.txt
