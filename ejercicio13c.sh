if [ -d $1 ] || [ -f $1 ];
then
    if [ -d $1 ];
    then
        echo "existe directorio"
    else
        echo "existe archivo"
    fi
else
    mkdir $1
fi