num=(10 3 5 7 9 3 5 4)

total=1
for i in ${num[@]}
do
    
    total=$(expr $total \* $i)
done

echo $total