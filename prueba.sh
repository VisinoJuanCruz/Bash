suma (){
    let suma=$1+$2
    echo $suma
}

resta(){
    let resta=$1-$2
    echo $resta
}

division(){
    let division=$1/$2
    echo $division
}

multiplicacion(){
    let multiplicacion=$1*$2
    echo $multiplicacion
}

if [ $# -ne 2 ];then
    echo "Debe ingresar dos parametros."
    return 1
    fi
suma $1 $2
resta $1 $2
division $1 $2
multiplicacion $1 $2