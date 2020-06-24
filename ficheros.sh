#!/bin/bash
#Nom del programa: fitxers
# -d f  cierto si f existe y es un directorio
# -f f cierto si f existe y no es un directorio
# -h f cierto si f existe y es un elace simbolico
# -n c cierto si la cadena c no esta vacia
# -r f ciserto si se tiene permiso de lectura de fichero f
# -w f cierto si tiene permiso de esctitura
# -x f cierto si el fichero f tiene permiso de ejecucion
# -o Eres el dueño del fixhero
# - g El grupo del fichero
# -nt Fichero1 es mas reciente que fichero2
# -ot fichero1 es mas antigua que fichero 2#
# variable=$(comando) comando se ejecuta y se guarda en la variable
# hay que tener en cuenta los espacios. Tambien se puede sustituir por ` el acento abierto `
#VARIABLE=`comando `
# Esta primera linia comprueva si hay parametros de entrada.
if [ $1 ]; then #en caso  positivo realitza el resto de acciones
    direc=$(pwd)
    echo "el directorio actual es:  $direc"

    #comprueba si es un directorio
    if [ -d $1 ]; then
        echo " el $1 que has puesto  es un directori"
    else
        echo "el $1 que has puesto no es un directori"
        echo $directori
    fi

    #comprueba si el archivo existe.
    if [ -e $1 ]; then
        echo "$1: Existe"
    else
        echo "$1: No existe"
    fi

    #comprueva si el arxhivo se puede leer -read
    if [ -r $1 ]; then
        echo "- Se puede leer"
    else
        echo "- No se puede leer"
    fi

    #comprueva si se puede ecribir.
    if [ -w $1 ]; then
        echo "- Se puede escribir"
    else
        echo "- No Se puede escribir"
    fi

    #comprueva si es ejecutable
    if [ -x $1 ]; then
        echo "- Es ejecutable"
    else
        echo "- No es ejecutable"
    fi

    #comprueva que sea el proietario que esta consultando.
    if [ -o $1 ]; then
        echo "- Eres el dueño"
    else
        echo "- No eres el dueño"
    fi

    #comprueba que sea del tu grupo
    if [ -g $1 ]; then
        echo "- Es de tu grupo"
    else
        echo "- No es de tu grupo"
    fi

#en caso de que no haya parametros ejecuta el codigo siguiente
else
    echo "falta el parametro"
    echo "tienes que poner ./fitxer.sh parametro1 "
fi
exit
