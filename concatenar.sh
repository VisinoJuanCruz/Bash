concatenarAtras(){
    for i in $(ls $1)
    do
        mv $1$i $1$i$2
    done
}

concatenarAdelante(){
    for i in $(ls $1)
    do
        mv $1$i $1$2$i
    done
        
}

case $2 in 
    "-a") 
        concatenarAtras $1 $3
    ;;
    "-b") 
        concatenarAdelante $1 $3
    ;;
esac