#! /bin/bash
#
#
#Un número es perfecto si es igual a la suma de sus divisores propios (excluyéndose a sí
#mismo). Ejemplo: 6 (1+2+3=6). Escribe un programa que reciba un número e informe si es
#perfecto, utilizando un bucle for para hallar y sumar sus divisores.



echo "Add the number to evaluate"
read number 
summ=0

for ((i=1; i<$number; i++))
do
    if (( number % i == 0 )); then
        ((summ += i))
    fi
done

if [[ $number == $summ ]]; then
    echo "${number} is perfect"
else
    echo "${number} is not perfect"
fi

