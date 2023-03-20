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

# En este código, después de la primera solicitud de instalación del programa, se usa un bucle "while" para solicitar una entrada válida del usuario si se presiona "Intro" sin proporcionar una opción válida. Dentro del bucle, se usan varias declaraciones if-elif-else para verificar la entrada del usuario y ejecutar la acción correspondiente. Si el usuario proporciona una entrada válida ("s" o "n"), se realiza la acción correspondiente. Si el usuario presiona "Intro" sin proporcionar una entrada válida, se muestra un mensaje que solicita una entrada válida. Si el usuario proporciona una entrada inválida, se muestra un mensaje de error y se solicita una entrada válida nuevamente. El bucle "while" se ejecuta indefinidamente hasta que el usuario proporcione una entrada válida o decida salir del script.
