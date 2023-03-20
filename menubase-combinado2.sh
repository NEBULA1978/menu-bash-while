# #!/bin/bash

# echo "Instalar programa ?¿ introduce si o no"

# echo -n "Instalar programa? [s/n]: "
# read resultado

# if [[ $resultado == [sS] ]]; then
#     echo "Instalando programa..."
#     echo "Instalar programa ?¿ introduce si o no"

#     echo -n "Instalar programa? [s/n]: "
#     read resultado

#     if [[ $resultado == [sS] ]]; then
#         echo "Instalando programa..."
#         echo "Instalar programa ?¿ introduce si o no"

#         echo -n "Instalar programa? [s/n]: "
#         read resultado

#         if [[ $resultado == [sS] ]]; then
#             echo "Instalando programa..."
#             echo "Instalar programa ?¿ introduce si o no"

#             echo -n "Instalar programa? [s/n]: "
#             read resultado

#             if [[ $resultado == [sS] ]]; then
#                 echo "Instalando programa..."
#             elif [[ $resultado == [nN] ]]; then
#                 echo "El programa no se va a instalar"
#             else
#                 echo "Opcion invalida"
#             fi
#         elif [[ $resultado == [nN] ]]; then
#             echo "El programa no se va a instalar"
#         else
#             echo "Opcion invalida"
#         fi
#     elif [[ $resultado == [nN] ]]; then
#         echo "El programa no se va a instalar"
#     else
#         echo "Opcion invalida"
#     fi
# elif [[ $resultado == [nN] ]]; then
#     echo "El programa no se va a instalar"
# else
#     echo "Opcion invalida"
# fi

# This is a bash script that prompts the user to install a program and then executes the installation if the user confirms. The script uses the "read" command to read the user input and stores it in the variable "resultado". It then checks whether the user input matches the patterns for "yes" or "no" using a regular expression in a conditional statement.

# If the user confirms the installation, the script prints "Instalando programa..." and prompts the user again for confirmation. If the user confirms again, the script prints "Instalando programa..." again. If the user cancels the installation at any point, the script prints "El programa no se va a instalar". If the user inputs an invalid option, the script prints "Opcion invalida".

# Overall, this script provides a simple way to prompt the user for confirmation before executing a potentially irreversible action like software installation.

# Este es un script de bash que solicita al usuario instalar un programa y luego ejecuta la instalación si el usuario confirma. El script utiliza el comando "read" para leer la entrada del usuario y la almacena en la variable "resultado". Luego verifica si la entrada del usuario coincide con los patrones de "sí" o "no" utilizando una expresión regular en una declaración condicional.

# Si el usuario confirma la instalación, el script imprime "Instalando programa..." y solicita al usuario que confirme nuevamente. Si el usuario confirma nuevamente, el script imprime "Instalando programa..." nuevamente. Si el usuario cancela la instalación en algún momento, el script imprime "El programa no se va a instalar". Si el usuario ingresa una opción no válida, el script imprime "Opcion invalida".

# En general, este script proporciona una forma simple de solicitar al usuario una confirmación antes de ejecutar una acción potencialmente irreversible como la instalación de software.

#!/bin/bash

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

    elif [[ $respuesta == [nN] ]]; then
        echo "El programa no se va a instalar"
        break
    else
        echo "Opción inválida"
    fi
done

# Este es un script de shell que crea un ciclo while infinito y muestra continuamente un mensaje al usuario preguntándole si desea instalar un programa.

# Si el usuario ingresa "s" o "S", el script mostrará un mensaje "Instalando programa..." y volverá a preguntar. Si el usuario ingresa "n" o "N", el script mostrará un mensaje "El programa no se va a instalar" y saldrá del ciclo while con el comando "break". Si el usuario ingresa cualquier otra opción, el script mostrará un mensaje "Opción inválida" y volverá a preguntar.

# En resumen, este script solicita al usuario confirmación para instalar un programa y solo procederá si el usuario ingresa "s" o "S".
