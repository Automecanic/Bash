#!/usr/local/bin/bash
#Nom del programa:  funciones para utilizar con el funciones.sh
#en el archivo funciones.sh muestra como importar la funcion sumar.
sumar(){
    if [ $# -ge 2 ]
    then
    echo "el resultado de $1 + $2  = $(($1+$2))"
    else
    echo "faltan argumentos"
    fi
}