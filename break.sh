#!/bin/bash
i=0
while true
do
let i++
if [ $i -eq 6 ]; then
echo "Corto."
break # Corta el while
elif [ $i -eq 3 ]; then
echo "Salto una iteracion."
continue # Salta una iteración
fi
echo $i
done