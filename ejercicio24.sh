vector1=(5 4 9 1 6 7 5 8 4 2)
vector2=(3 6 5 4 8 7 2 5 9 4)

echo ${vector1[@]}
echo ${vector2[@]}

#for i in ${vector2[@]}
#do
#    echo $i
#    echo expr ${vector2[$i]} + ${vector1[$i]}
#done

for (( i=0 ; i < ${#vector1[@]} ; i++ ))
do
    echo "La suma de las posiciones $i de los vectores da como resultado : $(expr ${vector2[$i]} + ${vector1[$i]})"
done