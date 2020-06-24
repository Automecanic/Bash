#!/bin/bash
#Nombre del programa: bucles

#while
i=0
#sera como  en java mentres i sea menor que 100
#vigilar los espacios , da error si no estan correctos
# es pot fer servir el doble  [[ expresio ]] per evitar errors.
while [ $i -lt 100 ]; do #el do equivale a la llave de apertura
    # 0  es false y 1 true , si el resultado es 0 considera que es false
    #  !  invierte el resultado
    if !(($i%2)); then
        echo $i
    fi
    ((i++))
    #seria la llave de cierre
done

#-----------------------------------------------#
#-----------bucle for ---------------------------#
#------------------------------------------------#

# se puede utilizar como un for en java , c, etc.. con el doble parentesis
echo "tabla del 12"
for ((i = 0; i <= 10; i++)); do #el do se puede poner en la misma linia que el for con  ;
    echo "12 X $i = $((i * 12))"
done

#para poner un salto de linia se utiliza el  parametro -e  y \n
echo -e "\ntabla del 13"
# con rango rango como en python
for i in {1..10}; do
    echo "13 X $i = $((i * 13))"
done

echo -e "\nnumeros pares de 0 al 100"
#en teoria deve in incrementando de 0 a 100 de 2 en 2
#en mi caso no me funciona seguiré investigando.
for variable in {0..100..2}; do
    echo "$variable"
done

# recorre la lista de colores como valores.
for color in rojo amarillo verde
do 
echo " el color puede ser $color"
done

#declaramos un array
declare -a palabra=("uno" " dos"  "tres"  "quatro")
#recorre todos los componentes del array.
for letra in ${palabra[@]}
do
echo "el numero es $letra"
done

for ((i=0;i<${#palabra[@]};i++))
do
echo "la palabra $i es ${palabra[$i]}"
done
#-----------------------------------------------#
#-----------bucle until--------------------------#
#------------------------------------------------#

#seria  como el while pero  al contrario mientras que NO se cumpla la condicion
i=20
until [ $i -lt 10 ]; do
    echo "el  $i no es menor que 10"
    ((i--))
done
