# Función para el menú de apuestas
function function_menu_apuestas() {
    local technique_choice
    local money
    local technique

    echo "Menú:"
    echo "1. martingala"
    echo "2. d'Alembert"
    echo "3. Paroli"
    echo "4. Salir"
    read -p "Seleccione una técnica de apuestas (1-4): " technique_choice

    if [ $technique_choice -eq 4 ]; then
        echo -e "\n\n[!] Saliendo...\n"
        return 1
    elif [ $technique_choice -ge 1 ] && [ $technique_choice -le 3 ]; then
        read -p "Introduzca la cantidad de dinero: " money

        if [ $money ]; then
            case $technique_choice in
            1) technique="martingala" ;;
            2) technique="d'Alembert" ;;
            3) technique="Paroli" ;;
            esac
            echo "Voy a jugar con $money dinero usando la técnica $technique"
            # Ejecutar técnica aquí
            sleep 10
        else
            echo -e "\n[!] Por favor, introduzca una cantidad de dinero válida.\n"
        fi
    else
        echo -e "\n[!] Por favor, introduzca una técnica de apuestas válida.\n"
    fi
}

function_Varios() {
    echo "Instalar programa ?¿ introduce si o no"

    echo -n "Instalar programa? [s/n]: "
    read resultado

    if [[ $resultado == [sS] ]]; then
        echo "Instalando programa..."
    elif [[ $resultado == [nN] ]]; then
        echo "El programa no se va a instalar"
    else
        echo "Opcion invalida"
    fi
    echo "Escribe un número"
    echo -n "Escribe un número: "
    read valor

    if [[ $valor -ne 5 ]]; then
        echo "Tu numero no es igual a 5"
    else
        echo "Tu numero es igual a 5"
    fi
    echo "Escribe un número para ver el rango entre 5 y 10 "

    echo -n "Escribe un número: "
    read valor

    if [ $valor -lt 5 -o $valor -gt 10 ]; then
        echo "Tu numero está fuera  del rango [5, 10]"
    else
        echo "Tu numero está en el rango [5, 10]"
    fi
    echo "Escribe un número ,bucle for del 0 al numero introducido vemos numeros"
    echo -n "Escribe un número: "
    read limite

    for ((i = 0; i < $limite; i++)); do
        echo $i
    done

}