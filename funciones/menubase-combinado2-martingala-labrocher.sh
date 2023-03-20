#!/bin/bash

while true; do
    echo -n "¿Desea instalar el programa? [s/n]: "
    read respuesta

    if [[ $respuesta == [sS] ]]; then
        echo "Instalando programa..."
        # Sección añadida para la estrategia Labouchere
        echo "¿Desea utilizar la estrategia Labouchere? [s/n]: "
        read usar_labouchere
        if [[ $usar_labouchere == [sS] ]]; then
            echo "Escriba los números de su serie Labouchere, separados por espacios: "
            read -a serie_labouchere
            dinero_ganado=0
            while [ ${#serie_labouchere[@]} -gt 0 ]; do
                apuesta=$((${serie_labouchere[0]} + ${serie_labouchere[-1]}))
                echo "Apuesta: $apuesta"
                # Aquí iría la lógica para realizar la apuesta y comprobar si se gana o pierde
                if [ gana_apuesta ]; then
                    dinero_ganado=$(($dinero_ganado + $apuesta))
                    echo "Ganaste $apuesta. Dinero ganado: $dinero_ganado"
                    unset serie_labouchere[0]
                    unset serie_labouchere[-1]
                else
                    echo "Perdiste $apuesta"
                    serie_labouchere+=($apuesta)
                fi
            done
            echo "¡Enhorabuena! Has completado la serie Labouchere y has ganado $dinero_ganado."
        else
            # Sección original del código
            while true; do
                echo -n "¿Desea instalar el programa? [s/n]: "
                read respuesta

                if [[ $respuesta == [sS] ]]; then
                    echo "Instalando programa..."
                    while true; do
                        echo -n "¿Desea instalar el programa? [s/n]: "
                        read respuesta

                        if [[ $respuesta == [sS] ]]; then
                            echo "Instalando programa..."
                            while true; do
                                echo -n "¿Desea instalar el programa? [s/n]: "
                                read respuesta

                                if [[ $respuesta == [sS] ]]; then
                                    echo "Instalando programa..."
                                elif [[ $respuesta == [nN] ]]; then
                                    echo "El programa no se va a instalar"
                                    break
                                else
                                    echo "Opción inválida"
                                fi
                            done

                        elif [[ $respuesta == [nN] ]]; then
                            echo "El programa no se va a instalar"
                            break
                        else
                            echo "Opción inválida"
                        fi
                    done

                elif [[ $respuesta == [nN] ]]; then
                    echo "El programa no se va a instalar"
                    break
                else
                    echo "Opción inválida"
                fi
            done
        fi

    elif [[ $respuesta == [nN] ]]; then
        echo "El programa no se va a instalar"
        break
    else
        echo "Opción inválida"
    fi
done


# Para añadir la estrategia de ruleta Labouchere al código anterior, se podría hacer algo como lo siguiente:

# El código es un script en bash que pregunta al usuario si desea instalar un programa. Si la respuesta es afirmativa, se ejecuta una sección adicional que pregunta si desea utilizar la estrategia de ruleta Labouchere. Si el usuario elige esta opción, se le pide que ingrese una serie de números y se realiza una simulación de la estrategia de Labouchere en la que se apuesta en la ruleta y se sigue la lógica de la estrategia. Si la respuesta del usuario es negativa o si se completa la simulación de Labouchere, el script vuelve a la sección original y continúa preguntando al usuario si desea instalar el programa. El script utiliza condicionales y bucles while para controlar el flujo del programa y manejar las respuestas del usuario.