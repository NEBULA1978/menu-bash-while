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