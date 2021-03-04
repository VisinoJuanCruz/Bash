mostrarMenu(){
    echo "1)Listar contenido del directorio actual."
    echo "2)Mostrar donde estoy."
    echo "3)Mostrar quién está conectado."
}

elegirOpcion(){
    echo "Por favor elija una opcion."
    read opcion
    while [ $opcion -le 0 ] || [ $opcion -gt 3 ]
    do
        echo "Por favor elija una opcion entre 1 y 3."
        read opcion
    done

}

realizarAccion(){
    case $opcion in
        1)
        echo ""
        echo "El contenido del directorio actual es:"
        ls
    ;;
       2)
        echo ""
        echo "Se encuentra ubicado en:"
        pwd
    ;;
        3)
        echo ""
        echo "En este momento se encuentran conectados:"
        who
    ;;
esac

}

mostrarMenu
elegirOpcion
realizarAccion

