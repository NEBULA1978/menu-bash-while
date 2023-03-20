#!/bin/bash

opciones=("s" "n")

while true; do
    read -rp "¿Desea instalar el programa? [s/n]: " respuesta
    if [[ " ${opciones[*]} " != *" $respuesta "* ]]; then
        echo "Opción inválida. Introduce s/n."
    elif [[ "$respuesta" == "n" ]]; then
        echo "El programa no se va a instalar."
        break
    else
        echo "Instalando programa..."
        while true; do
            read -rp "¿Desea utilizar el programa? [s/n]: " respuesta
            if [[ " ${opciones[*]} " != *" $respuesta "* ]]; then
                echo "Opción inválida. Introduce s/n."
            elif [[ "$respuesta" == "n" ]]; then
                echo "El programa ha finalizado."
                break 2
            else
                echo "Utilizando el programa..."
                while true; do
                    read -rp "¿Desea salir del programa? [s/n]: " respuesta
                    if [[ " ${opciones[*]} " != *" $respuesta "* ]]; then
                        echo "Opción inválida. Introduce s/n."
                    elif [[ "$respuesta" == "s" ]]; then
                        echo "Saliendo del programa..."
                        break 3
                    else
                        echo "Continuando en el programa..."
                        break
                    fi
                done
            fi
        done
    fi
done

# En este ejemplo, se utiliza un bucle while para preguntar si se desea instalar el programa y otro bucle while para preguntar si se desea utilizar el programa. En lugar de anidar varios bucles while, se utiliza el comando break 2 para salir de dos bucles simultáneamente cuando se desea finalizar el programa.

# Además, se utiliza un arreglo llamado opciones para almacenar las opciones válidas ("s" y "n") y se verifica que la opción ingresada por el usuario esté incluida en el arreglo antes de continuar con el programa. Esto hace que el código sea más legible y menos propenso a errores.