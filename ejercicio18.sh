verificaLogin(){
for i in $(users)
    do 
        if [ $i = $1 ];then
            return 0
        else
            return 1
        fi
    done
}

while true
    do
        verificaLogin $1
        if [ $? = 1 ];then
            echo "no está logueado"
        else [ $? = 0 ]
            echo "Está logueado"
            break
        fi
        sleep 10
        
    done