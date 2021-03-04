
contenido=($($1 ls -l | sed 's/\s\+/,/g' | cut -d, -f1,9 ))
unset array[0]

for (( i=1 ; i < ${#contenido[@]} ; i++ ))
do
    str=${contenido[$i]}
    IFS=','
    read -a archivostr <<< "$str"

    if [[ ${archivostr[0]} =~ 'd' ]];then
        echo ${archivostr[1]}
        echo "es directorio"
    elif [[ ${archivostr[0]} =~ 'f' ]];then
        echo ${archivostr[1]}
        echo "es archivo"
    fi
    permisos=${archivostr[0]}
    IFS=" "
    read -a permisosstr <<< "$permisos"
    #echo "VAN LOS PERMISOS DEL "$i""
    #echo ${permisosstr[0]}
    #for (( x=1 ; x <= ${#permisosstr[@]} ; i++ ))
    #do
    #    echo $x
    #done
    
done


