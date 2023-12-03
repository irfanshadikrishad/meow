#!/bin/bash

echo hello World
echo "hello world"

hello(){
    echo hello world
}
function hello_world(){
    echo hello world
}

hello args1 args2 "args3" 'args4'

This_Is_A_Variable=/some/thing

echo $This_Is_A_Variable 
read First_Name

echo $First_Name 

# for loop
for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done

# case statement
echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac 

# while loop
a=7
while [ $a -gt 4 ];
do
    echo $a
    ((a--))
done

echo "Out of the loop" 

# awk
awk '{ print $0 }' filename.txt

# sed
sed -i "s/from/to/g" filename.txt

hello_world 

echo systeminfo | grep "System Boot Time" 

ARRAY=(one two three four five)

echo $ARRAY # prints only the first item
echo ${ARRAY[@]} # prints all the items
echo ${ARRAY[0]} ${ARRAY[3]} # prints specific item
