#!/bin/bash

# Importar las funciones necesarias desde los archivos correspondientes
source funciones_apuestas.sh
source funciones_varios.sh

# Función principal
function main() {
    if instalar; then
        while continuar; do
            read -p "¿Qué función desea utilizar? [1] Apuestas, [2] Varios, [3] Salir: " opcion
            case $opcion in
                1)
                    while function_menu_apuestas; do
                        echo "Utilizando la función de apuestas..."
                    done
                    ;;
                2)
                    while function_menu_varios; do
                        echo "Utilizando la función de varios..."
                    done
                    ;;
                3)
                    echo "Saliendo del programa..."
                    break
                    ;;
                *)
                    echo "Opción inválida. Introduce 1, 2, o 3."
                    ;;
            esac
        done
    fi
}

main
