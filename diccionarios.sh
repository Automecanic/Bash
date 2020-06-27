#!/usr/local/bin/bash
#Nom del programa: diccionarios
#Los diccionarios son como los arrais pero con la diferencia que hay
#declarar-los de forma explicita. La mayoria de variables no hace falta declarar las
#se declaran de forma implicita.
#declare <opcion> se utiliza para declarar variables mirar opciones
# -a declara array
# -A declara una array con asignacion de valor(diccionario)
# -r solo de lectura
# -i para declarar un integer

declare -A asistente
asistente[juan]='34252'
asistente[pepe]='42232'
asistente[pedro]='57575'

echo ${asistente[juan]}
#Salida: 34252
echo ${asistente[@]}
#salen todos los valores
#Salida: 42232 57575 34252
echo ${!asistente[*]}
#salen todas las claves
#Salida: pepe pedro juan

# utilitzacion de for para recorrer diccionarios

for i in ${asistente[@]}; do
    # recorre los valores
    echo " Asistente  $i"
done
#Salida:
# Asistente  42232
#Asistente  57575
#Asistente  34252

for i in ${!asistente[@]}; do
    # recorre las claves
    echo " Asistente  $i  con ID ${asistente[$i]}"
done
#Salida:
#Asistente  pepe  con ID 42232
#Asistente  pedro  con ID 57575
#Asistente  juan  con ID 34252

#para borar un valor se utiliza unset asistente[clave]
#se tiene que vigilar los espacios ejem. asistente[ana maria] darà error
#podemos poner 'ana maria'
asistente['ana maria']='23232'

#poner varios de una vez 
asistente+=([pedrito]='23123' [joselito]='54325')

#utilizar variables como clave, puede dar problemas
#en ese caso recuerda de poner  "$clave"  entre comillas para evitarlo.
clave='ana maria'
echo ${asistente[$clave]}