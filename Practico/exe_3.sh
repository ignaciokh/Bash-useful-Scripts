#! /bin/bash
#

#Escribir un programa que pida al usuario ingresar un número entero y retorne su factorial.
#
#

echo "Add the number to get the factorial"
read number
result=1


for (( i=1 ; i<=$number ; i++ )); 
do
    ((result *= $i))
done 

echo "$result"
