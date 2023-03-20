#!/bin/bash

echo "¿Desea instalar el programa? Introduce s/n"

read -r respuesta

if [[ $respuesta == [sS] ]]; then
    echo "Instalando programa..."
    echo "¿Desea instalar el programa de nuevo? Introduce s/n"

    while true; do
        read -r respuesta2

        if [[ $respuesta2 == [sS] ]]; then
            echo "Instalando programa..."
        elif [[ $respuesta2 == [nN] ]]; then
            echo "El programa no se va a instalar"
            exit 0
        elif [[ $respuesta2 == "" ]]; then
            echo "Debes introducir s/n"
        else
            echo "Opción inválida. Introduce s/n"
        fi
    done

elif [[ $respuesta == [nN] ]]; then
    echo "El programa no se va a instalar"
else
    echo "Opción inválida. Introduce s/n"
fi

# En este código, el segundo bloque de código se anida dentro del primer bloque if. Si el usuario proporciona una entrada válida ("s" o "n") en la primera solicitud, se ejecuta el segundo bloque de código dentro del bucle "while". Si el usuario proporciona una entrada inválida o presiona "Intro" sin proporcionar una entrada válida en la primera solicitud, se muestra un mensaje de error o se solicita una entrada válida. Si el usuario proporciona una entrada válida de "n" en la primera solicitud, el script se cierra sin ejecutar el segundo bloque de código.