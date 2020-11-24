#!/bin/bash

clear
echo "Introduce el número de veces que deseas tirar el dado"
read veces
clear
for ((i=1;i<=$veces;i++))
do
dado=$((1+$RANDOM % 6))
echo "Tiro" $i. $dado
done
