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

if [ $# -ne 3 ];then
    echo "Debe ingresar tres parametros."
    echo $#
fi

echo $*
case $2 in
    "+")
        suma $1 $3
        ;;
    "-")
        resta $1 $3
        ;;
    "x")
        multiplicacion $1 $3
        ;;
    "/")
        division $1 $3
        ;;
    esac
