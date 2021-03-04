


imprimirUsuarios(){
    for (( i=0 ; i < ${#arregloUsuarios[@]} ; i++ ))
        do
            echo ${arregloUsuarios[$i]}
        done
}

if [ $# = 0 ];
then
    echo "Debe ingresar por lo menos un parametro."
else
    arregloUsuarios=($(cat /etc/passwd | cut -d: -f1))
    if [ $# = 1 ];
        then
            if [ $1 = "-l" ];
                then
                    echo "La longitud del arreglo de usuarios es de: ${#arregloUsuarios[@]}"
            elif [ $1 = -i ];
                then
                    echo "Los elementros del arreglo de usuarios es el siguiente:"
                    echo ""
                    imprimirUsuarios
            fi
    elif [ $# = 2 ];
        then
            if [ $1 = "-b" ];
                then
                    if ([ $2 -ge 0 ] && [ $2 -lt ${#arregloUsuarios[@]} ]);
                        then
                        echo "El elemento en la posicion $2 del arreglo es: ${arregloUsuarios[$2]}"
                    else
                        echo "La posicion puede ser entre 0 y ${#arregloUsuarios[@]}"
                    fi
            fi
    fi
                
fi
