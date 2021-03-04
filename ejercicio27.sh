inicializar(){
    array=()
}

agregar_elem(){
    array=("${array[@]}" $1)
}

eliminar_elem(){
    
    if [ $1 > 0 ] && [ $1 < ${#array[@]} ];then
        unset array[$1]
    else
        echo "Ingrese un indice válido por favor."
    fi
}

longitud(){
    echo ${#array[@]}
}

imprimir(){
    echo ${array[@]}
}

inicializar_Con_Valores(){
    inicializar
    for (( i=0 ; i < $1 ; i++ ))
    do
        array=("${array[@]}" $2)
    done

}

inicializar_Con_Valores 50 999
imprimir
longitud
