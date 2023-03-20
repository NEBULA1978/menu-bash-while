#!/bin/bash

# Definimos la serie de números
serie=(1 2 3 4 5 6)

while true; do
    echo -n "¿Desea jugar a la ruleta con la estrategia Labouchere? [s/n]: "
    read respuesta

    if [[ $respuesta == [sS] ]]; then
        # Inicializamos las variables necesarias
        apuesta=0
        suma=0
        restantes=${#serie[@]}
        echo "La serie de números es: ${serie[@]}"

        # Empezamos el juego
        while (( restantes > 0 )); do
            # Solicitamos la cantidad de la apuesta
            echo -n "¿Cuánto desea apostar?: "
            read cantidad

            if (( cantidad > 0 )); then
                # Calculamos la apuesta
                if (( suma == 0 )); then
                    # Si no hemos hecho ninguna apuesta todavía, apostamos la suma de los extremos
                    apuesta=$(( serie[0] + serie[-1] ))
                else
                    # En caso contrario, apostamos la suma del primer y último número de la serie actual
                    apuesta=$(( serie[$(( ${#serie[@]} - restantes ))] + serie[$(( ${#serie[@]} - 1 ))] ))
                fi

                echo "Apuesta: $apuesta"

                # Pedimos al usuario que elija el tipo de apuesta
                echo -n "¿En qué desea apostar? [r/n/p/h]: "
                read tipo

                # Generamos un número aleatorio (simulando el lanzamiento de la bola)
                numero=$(( $RANDOM % 37 ))

                # Comprobamos si hemos ganado o perdido
                case $tipo in
                    r)
                        if (( numero % 2 == 0 )); then
                            echo "¡Ha salido rojo!"
                            suma=$(( suma + apuesta ))
                            restantes=$(( restantes - 2 ))
                        else
                            echo "¡Ha salido negro!"
                            serie+=($apuesta)
                            suma=$(( suma - apuesta ))
                        fi
                        ;;
                    n)
                        if (( numero >= 1 && numero <= 18 )); then
                            echo "¡Ha salido bajo!"
                            suma=$(( suma + apuesta ))
                            restantes=$(( restantes - 2 ))
                        elif (( numero >= 19 && numero <= 36 )); then
                            echo "¡Ha salido alto!"
                            serie+=($apuesta)
                            suma=$(( suma - apuesta ))
                        else
                            echo "¡Ha salido cero!"
                            serie+=($apuesta $apuesta)
                            restantes=$(( restantes - 2 ))
                        fi
                        ;;
                    p)
                        if (( numero % 2 == 1 )); then
                            echo "¡Ha salido impar!"
                            suma=$(( suma + apuesta ))
                            restantes=$(( restantes - 2 ))
                        else
                            echo "¡Ha salido par!"
                            serie+=($apuesta)
                            suma=$(( suma - apuesta ))
                    fi
                    ;;
                h)
                    if (( numero >= 1 && numero <= 12 )); then
                        echo "¡Ha salido bajo!"
                        suma=$(( suma + apuesta ))
                        restantes=$(( restantes - 2 ))
                    elif (( numero >= 13 && numero <= 24 )); then
                        echo "¡Ha salido medio!"
                        serie+=($apuesta)
                        suma=$(( suma - apuesta ))
                    elif (( numero >= 25 && numero <= 36 )); then
                        echo "¡Ha salido alto!"
                        suma=$(( suma + apuesta ))
                        restantes=$(( restantes - 2 ))
                    else
                        echo "El número no es válido"
                    fi
                    ;;
                *)
                    echo "Opción inválida"
                    ;;
            esac
        else
            echo "No tienes suficiente dinero para apostar esa cantidad"
        fi
    else
        echo "La apuesta debe ser un número positivo"
    fi
done

echo "Has terminado de jugar"
echo "Tu saldo final es de $suma"
