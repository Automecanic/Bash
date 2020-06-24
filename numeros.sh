#!/bin/bash

#Operadores logicos numerios 

# -gt greater to (mayor que)
# -ge greater equal (mayor o igual que)
# -eq equal (igual)

if [ $1 -ge $2 ]; 
then
    echo "hola el, $1 en mayor que $2"
else 
	echo "$2 en manyor que $1"
fi

# -lt little to (menor que) 
# -le little equal (menor o igual)
# -ne not equal (distinto que)


if [ $1 -le $2 ];
then 
    echo "$1 es menor que $2"
else 
    echo "$2 es menor que $1"
fi

#
exit
