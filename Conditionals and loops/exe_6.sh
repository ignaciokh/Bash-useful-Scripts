#! /bin/bash
#
#El usuario piensa un número entre 1 y 100. El programa debe intentar adivinarlo usando
#una "búsqueda binaria". En cada iteración, el programa propone un número y el usuario
#responde si su número es "mayor", "menor" o "igual". El programa debe ajustarse
#dinámicamente usando un bucle do-while.
#
#
#
mayor=100
minor=0

while true; do
    number=$(( ($mayor + $minor) / 2 ))
    echo "Select if you number is mayor, minor or equial to ${number}"
    read response

    if [[ $response == "mayor" ]]; then
        minor=$number
    elif [[ $response == "minor" ]]; then
        mayor=$number
    elif [[ $response == "equal" ]]; then
        echo "Number found your number if ${number} !!!!"
        break
    fi
done
