#!/bin/bash
# menú utilizando funciones en Bash:

# Función para preguntar si se desea continuar
function continuar() {
    local opciones=("s" "n")
    while true; do
        read -rp "¿Desea continuar? [s/n]: " respuesta
        if [[ " ${opciones[*]} " != *" $respuesta "* ]]; then
            echo "Opción inválida. Introduce s/n."
        else
            break
        fi
    done
    if [[ "$respuesta" == "n" ]]; then
        echo "Saliendo del programa..."
        return 1
    else
        return 0
    fi
}

# Función para instalar el programa
function instalar() {
    local opciones=("s" "n")
    while true; do
        read -rp "¿Desea instalar el programa? [s/n]: " respuesta
        if [[ " ${opciones[*]} " != *" $respuesta "* ]]; then
            echo "Opción inválida. Introduce s/n."
        elif [[ "$respuesta" == "n" ]]; then
            echo "El programa no se va a instalar."
            return 1
        else
            echo "Instalando programa..."
            return 0
        fi
    done
}

function_Menu-sv4() {

    function controlC() {
        # Parametro -epara que me aplique los saltos de linea
        echo -e "\n\n[!] Saliendo...\n"
        # Codigo de estado no exitoso
        exit 1
    }

    # controlC
    # Para capturr el atajo de teclado que acabo de escribir y redirijirlo a la funcion controlC
    trap controlC INT

    # Si no ccomento se ejecuta despues de 10 segundos
    # sleep 10

    #///////////////////////////////////////////
    #///////////////////////////////////////////

    function helpPanel() {
        echo -e "\n[!] Por favor, introduzca una cantidad de dinero y una técnica de apuestas válida. Las técnicas disponibles son martingala, d'Alembert y Paroli.\n"
    }

    while true; do
        echo "Menú:"
        echo "1. martingala"
        echo "2. d'Alembert"
        echo "3. Paroli"
        echo "4. Salir"
        read -p "Seleccione una técnica de apuestas (1-4): " technique_choice

        if [ $technique_choice -eq 4 ]; then
            echo -e "\n\n[!] Saliendo...\n"
            exit 0
        elif [ $technique_choice -ge 1 ] && [ $technique_choice -le 3 ]; then
            read -p "Introduzca la cantidad de dinero: " money

            if [ $money ]; then
                case $technique_choice in
                1) technique="martingala" ;;
                2) technique="d'Alembert" ;;
                3) technique="Paroli" ;;
                esac
                echo "Voy a jugar con $money dinero usando la tecnica $technique"
                # Ejecutar técnica aquí
                sleep 10
            else
                helpPanel
            fi
        else
            helpPanel
        fi
    done
}

# Función principal
function main() {
    if instalar; then
        while true; do
            if continuar; then
                echo "Utilizando el programa..."

                if function_Menu-sv4; then
                    while true; do
                        if function_Menu-sv4; then
                            echo "Utilizando el programa..."
                            function_Menu-sv4
                        else
                            break
                        fi
                    done
                fi
            else
                break
            fi
        done
    fi
}

main

# RESULTADO POR CONSOLA

# ./menubase-combinado2-martingala-labrocher-all-in-array-funciones.sh
# ¿Desea instalar el programa? [s/n]: s
# Instalando programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: s
# Utilizando el programa...
# ¿Desea continuar? [s/n]: n
# Saliendo del programa...

# En este ejemplo, se utilizan funciones para realizar las tareas de preguntar si se desea instalar el programa y si se desea continuar. La función instalar devuelve un valor de 0 si el usuario desea instalar el programa y 1 si no lo desea. La función continuar devuelve un valor de 0 si el usuario desea continuar y un valor de 1 si desea salir del programa.

# La función principal main utiliza las funciones instalar y continuar para controlar el flujo del programa. Si el usuario desea instalar el programa, se inicia un bucle while que ejecuta el código dentro de la función continuar hasta que el usuario decida salir del programa.

# Este enfoque hace que el código sea más modular y fácil de mantener, ya que cada función realiza una tarea específica y se puede reutilizar en diferentes partes del programa si es necesario.

# El código se ve bien y debería funcionar correctamente. Me gusta que hayas utilizado funciones para separar las diferentes tareas del programa y hacer el código más modular y fácil de leer. También has utilizado un array para verificar si la respuesta del usuario es válida, lo cual es una buena práctica.

# La única sugerencia que podría hacer es que uses la opción -r con el comando read para evitar que se interpreten las barras invertidas (\) como caracteres de escape. Por ejemplo, en la línea read respuesta, podrías cambiarla por read -r respuesta para asegurarte de que la respuesta del usuario se interpreta de forma literal.

# En general, me parece un buen trabajo. ¡Sigue así!
