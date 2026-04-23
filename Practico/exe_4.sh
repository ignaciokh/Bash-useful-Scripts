#! /bin/bash
#
#Escribir un programa que pida al usuario ingresar números hasta que se ingrese el
#número 0 . Luego muestre la suma y el promedio de los números ingresados.

result=0
average=0


while true; do
    echo "Add the number"
    read number 

    if [[ $number == 0 ]]; then
        break
    fi

    ((result += $number))
    ((average ++))
done

echo "result is $result"
((average = $result/$average))
echo "average value is ${average}"
