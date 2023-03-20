#!/bin/bash

while true; do
    echo -n "¿Desea instalar el programa? [s/n]: "
    read respuesta

    if [[ $respuesta == [sS] ]]; then
        echo "Instalando programa..."

        echo "¿Desea utilizar alguna estrategia de ruleta? Escriba el número correspondiente:"
        echo "1. Estrategia de la Martingala"
        echo "2. Estrategia Labouchere"
        echo "3. Estrategia All-In"
        echo "4. Menu while"

        read opcion

        case $opcion in
        1)
            echo "Ha seleccionado la estrategia de la Martingala"
            # Aquí iría la implementación de la estrategia de la Martingala
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
        2)
            echo "Ha seleccionado la estrategia Labouchere"
            # Aquí iría la implementación de la estrategia Labouchere

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
            ;;
        3)
            echo "Ha seleccionado la estrategia All-In"
            echo "Escriba su presupuesto inicial:"
            read presupuesto
            echo "Escriba el objetivo de dinero a ganar:"
            read objetivo

            if [ $presupuesto -ge $objetivo ]; then
                echo "El objetivo debe ser mayor que el presupuesto inicial"
            else
                echo "Elija el tipo de apuesta para el All-In:"
                echo "1. Apuesta directa"
                echo "2. Columna"
                echo "3. Fila"
                echo "4. Esquina"

                read tipo_apuesta

                case $tipo_apuesta in
                1)
                    apuesta=$((objetivo / presupuesto))
                    ;;
                2)
                    apuesta=$((objetivo / (presupuesto * 2)))
                    ;;
                3)
                    apuesta=$((objetivo / (presupuesto * 3)))
                    ;;
                4)
                    apuesta=$((objetivo / (presupuesto * 4)))
                    ;;
                *)
                    echo "Opción inválida"
                    break
                    ;;
                esac

                echo "¡Apostando todo al $tipo_apuesta! Apuesta: $apuesta"
                # Aquí iría la lógica para realizar la apuesta y comprobar si se gana o pierde
                if [ gana_apuesta ]; then
                    echo "¡Ha ganado! Su premio es de $objetivo."
                    break
                else
                    echo "Ha perdido su apuesta. Inténtelo de nuevo."
                fi
            fi
            ;;
        4)
            echo "¿Desea instalar el programa? Introduce s/n"

            while true; do
                read -r respuesta
                case $respuesta in
                [sS]*)
                    echo "Instalando programa..."
                    echo "¿Desea instalar el programa? Introduce s/n"

                    while true; do
                        read -r respuesta
                        case $respuesta in
                        [sS]*)
                            echo "Instalando programa..."
                            echo "¿Desea instalar el programa? Introduce s/n"

                            while true; do
                                read -r respuesta
                                case $respuesta in
                                [sS]*)
                                    echo "Instalando programa..."
                                    break
                                    ;;
                                [nN]*)
                                    echo "El programa no se va a instalar"
                                    break
                                    ;;
                                *)
                                    echo "Opción inválida. Introduce s/n"
                                    ;;
                                esac
                            done
                            break
                            ;;
                        [nN]*)
                            echo "El programa no se va a instalar"
                            break
                            ;;
                        *)
                            echo "Opción inválida. Introduce s/n"
                            ;;
                        esac
                    done
                    break
                    ;;
                [nN]*)
                    echo "El programa no se va a instalar"
                    break
                    ;;
                *)
                    echo "Opción inválida. Introduce s/n"
                    ;;
                esac
            done
            ;;
        *)
            echo "Opción inválida"
            ;;
        esac

    elif [[ $respuesta == [nN] ]]; then
        echo "El programa no se va a instalar"
        break
    else
        echo "Opción inválida"
    fi
done

# El script es un programa escrito en Bash que permite al usuario instalar un programa y elegir entre tres estrategias de ruleta: la Martingala, la estrategia Labouchere y la estrategia All-In.

# Si el usuario elige la estrategia All-In, el programa le solicita que ingrese su presupuesto inicial y el objetivo de dinero a ganar. Luego, el usuario puede elegir entre cuatro tipos de apuesta (directa, columna, fila o esquina) para apostar todo su presupuesto.

# Una vez realizada la apuesta, el programa comprueba si el usuario ha ganado o perdido. Si ha ganado, muestra un mensaje de felicitación y finaliza. Si ha perdido, muestra un mensaje de error y permite al usuario volver a intentarlo.
