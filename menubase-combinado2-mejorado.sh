#!/bin/bash

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

# En este script, el bucle "while" se ejecuta indefinidamente hasta que el usuario proporcione una opción válida. El "case" se utiliza para verificar la entrada del usuario y ejecutar la acción correspondiente. Si el usuario proporciona una opción válida ("s" o "n" en este caso), el bucle se rompe con el comando "break". Si el usuario proporciona una opción inválida, el script muestra un mensaje de error y vuelve a solicitar una entrada válida.


#!/bin/bash

# echo "¿Desea instalar el programa? Introduce s/n"

# while true; do
#     read -r respuesta
#     case $respuesta in
#         [sS]*)
#             echo "Instalando programa..."
#             echo "¿Desea instalar el programa de nuevo? Introduce s/n"
#             while true; do
#                 read -r respuesta2
#                 case $respuesta2 in
#                     [sS]*)
#                         echo "Instalando programa..."
#                         ;;
#                     [nN]*)
#                         echo "El programa no se va a instalar"
#                         exit 0
#                         ;;
#                     *)
#                         echo "Opción inválida. Introduce s/n"
#                         ;;
#                 esac
#             done
#             ;;
#         [nN]*)
#             echo "El programa no se va a instalar"
#             exit 0
#             ;;
#         *)
#             echo "Opción inválida. Introduce s/n"
#             ;;
#     esac
# done

# En este código, después de la instalación inicial del programa, se solicita una segunda entrada del usuario para preguntar si desea instalar el programa nuevamente. Si el usuario proporciona una entrada válida ("s" o "n"), se realiza la acción correspondiente. Si el usuario proporciona una entrada inválida, se muestra un mensaje de error y se solicita una entrada válida nuevamente. El bucle "while" se ejecuta indefinidamente hasta que el usuario proporcione una entrada válida o decida salir del script.