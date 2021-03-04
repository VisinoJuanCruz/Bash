echo "Ingrese un numero por favor:"
read num1
echo "Ingrese otro numero:"
read num2

echo ""
echo "$num1 + $num2 ="
let suma=$num1+num2
echo $suma
echo "$num1 - $num2"
let resta=$num1-$num2
echo resta
expr $num1 - $num2
echo "$num1 / $num2"
expr $num1 / $num2
echo "$num1 * $num2"
let multiplicacion=$num1*$num2
echo $multiplicacion

if [ $num1 -gt $num2 ]
then 
    echo "$num1"
else
    echo "$num2"
fi
echo "bye."