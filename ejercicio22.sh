nums=( 1 2 3 4 5 6 7 8 9 77 1032 1 20 30 40 50)

impar=0
for i in ${nums[@]}
do
    if [ $(expr $i % 2) -eq 0 ];then
        echo "$i ES PAR"
    else 
        impar=$(expr $impar + 1 )
    fi
done
echo "La cantidad de impares es : $impar    "

