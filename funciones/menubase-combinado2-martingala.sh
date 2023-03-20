#!/bin/bash
# Genial, aquí hay un ejemplo de cómo podrías agregar la opción de la estrategia Martingala a tu menú while de bash:
while true; do
    echo "1. Opción 1"
    echo "2. Opción 2"
    echo "3. Estrategia Martingala"
    echo "4. Salir"
    read -p "Ingrese su opción: " opcion

    case $opcion in
        1)
            # Código para la opción 1
            ;;
        2)
            # Código para la opción 2
            ;;
        3)
            read -p "Ingrese su apuesta inicial: " apuesta_inicial
            read -p "Ingrese su límite superior de apuesta: " limite_apuesta
            apuesta_actual=$apuesta_inicial

            while true; do
                echo "Su apuesta actual es de $apuesta_actual"
                echo -n "Presione Enter para tirar la ruleta"
                read
                resultado=$((RANDOM % 2))

                if [[ $resultado -eq 0 ]]; then
                    echo "Ha perdido la tirada"
                    apuesta_actual=$((apuesta_actual * 2))
                    if [[ $apuesta_actual -gt $limite_apuesta ]]; then
                        echo "Ha alcanzado su límite de apuesta. ¡Juego terminado!"
                        break
                    fi
                else
                    echo "Ha ganado la tirada"
                    apuesta_actual=$apuesta_inicial
                fi

                read -p "¿Desea continuar jugando con la estrategia Martingala? [s/n]: " continuar_jugando
                if [[ $continuar_jugando == "n" ]]; then
                    echo "¡Juego terminado!"
                    break
                fi
            done
            ;;
        4)
            echo "¡Hasta pronto!"
            exit
            ;;
        *)
            echo "Opción inválida. Intente de nuevo."
            ;;
    esac
done
# Este ejemplo muestra un menú con cuatro opciones, incluyendo la opción de la estrategia Martingala. Cuando el usuario selecciona la opción de la estrategia Martingala, se le pide que ingrese su apuesta inicial y su límite superior de apuesta. Luego, se inicia un ciclo while que simula el juego con la estrategia Martingala. El jugador apuesta la cantidad actual y tira la ruleta. Si pierde la tirada, duplica su apuesta y continúa jugando. Si gana la tirada, vuelve a su apuesta inicial. El juego continúa hasta que el jugador alcanza su límite de apuesta o decide salir del juego.