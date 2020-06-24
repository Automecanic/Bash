#!/bin/bash

#operadores de cadenas
#= igual
#!= diferente
#-n con una longitut mayor que 0
#-z con una longitut igual o vacia
# poner la variable en un if devuelbe true i esta llena i false si esta vacia.
if  [  $1  ] || [ $2 ]
then 
  echo
else 
    echo "Falten arguments tanco"
exit
fi
c1=$1
c2=$2
if  [  $c1  ==  ' ^4*'  ] ;
then
    echo " es quatre esta buida "
    exit
fi
if [  -z  $c1  ] || [  -z  $c2  ] ;
then 
    echo "faltan parametros"
    exit 
fi
exit
