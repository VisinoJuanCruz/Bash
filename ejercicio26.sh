#!/bin/bash

total=1

for var in "$*"; do

	echo "\$* =======> #$total = $var"

	total=$(($total + 1))

done
echo $total

total=1

for var in "$@"; do

	echo "\$@ =======> #$total = $var"

	total=$(($total + 1))

done
echo $total

if [ $# -le 0 ];then
	echo "Debe ingresar por lo menos un parametro."
	fi
parametros=($0)

for i in "$@";
do
	parametros=("${parametros[@]}" $i)
done


for (( i=0 ; i < ${#parametros[@]} ; i++ ));
do
	if [ $(expr $i % 2) = 1 ];then
		if [ -d ${parametros[$i]} ];then
			echo "${parametros[$i]} es un directorio existente."
		elif [ -f ${parametros[$i]} ];then
			echo "${parametros[$i]} es un archivo existente."
		else
			echo "${parametros[$i]} no existe."
		fi

	fi
done
