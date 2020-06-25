#!/bin/bash
#Nom del programa: arrays
#para declarar un array se puede hacer de diferentes formas
#Bash no admite los arrays multidimensionales
#

arr1=(uno dos tres cuatro cinco)
declare -a arr2=(seis siete ocho nueve)
arr3[0]=diez
arr3[1]=once
arr4=('doce' 'trece' 'catorce')

#para poner espacios en los elementos se ponen con las comas o con la contrabarra
#la contrabarra se pondria para poner espacios y lo leeria como una sola cadena de caracteres
arr5=(son\ palabras\ diferentes todas)

#solo imprime el primer elemento del array
echo $arr1
#Salida: uno

#imprime totdos los elementos del array
#la @ hace referencia al largo del array sin especificar la posicion concreta.
echo ${arr1[@]}
#Salida:  uno dos tres cuatro cinco

#imprime dos elementos
echo ${arr5[@]}
#Salida: son palabras diferentes todas (son palabras diferentes )( todas )

#imprimir solo un elemento
echo ${arr2[2]}
#Salida: ocho

#para recorrer el array uno a uno se utilizara el for como siempre
#Las comillas no son necesarias  pero en este caso se pone entre comillas para que respete los espacios indicados
#con la trontrabarra. Si no imprimirá cada palabra en una linia
for i in "${arr5[@]}"; do
    echo $i
done
#Salida:
#son palabras difrentes
#todas

#para saber la largada del array se utiliza #
echo ${#arr4[@]}
#Salida: 3
#-----------------------------------------------#
#-----------acciones con arrays-----------------#
#------------------------------------------------#

#para agregar elemento al principio del  array se pone el elemnto
arr1=(cero "${arr1[@]}")
echo "${arr1[@]}"
#Salida: cero uno dos tres cuatro cinco

#si quieres ponerlo al final seria
arr1=("${arr1[@]}" seis)
echo "${arr1[@]}"
#Salida: cero uno dos tres cuatro cinco seis

#para agregar en medio del array
arr1=("${arr1[@]:0:4}" tres\ y\ medio "${arr1[@]:4}")
echo "${arr1[@]}"
#Salida: cero uno dos tres tres y medio cuatro cinco seis

#para borrar un arrray podemos utilizar el unset
unset arr1[4]
echo "${arr1[@]}"
#Salida: cero uno dos tres cuatro cinco seis
#el problema es que si hades esto:
echo "${arr1[4]}"
#Salida: no sale nada ya que borra el contenido pero guarda la posicion.
#podemos utiliar esto para borrar
arr1=("${arr1[@]:0:3}" "${arr1[@]:3}")
echo "${arr1[4]}"
#Salida: cuatro

#con la barra podemos substituir un elemento del array
arr1=(${arr1[@]/cinco/ocho})
echo "${arr1[@]}"
#Salida: cero uno dos tres cuatro ocho seis
#de esta manera podemos poner arr1=(${arr1[@]/cinco/}) con lo que
#substituiremos el cinco por nada.

#para borrar un array podemos utilizar  el unset nom_array
unset arr1

#las cadenas de caracteres o Strings se puden manipular como los arrays
palabra="el cochecito lere, me dijo anoche lere..."
#si ponemos una barra / solo sustituye la primera lletra mientras que si ponemos // todas las que encuentre.
palabra="${palabra//e/i}"
echo $palabra
#Salida: il cochicito liri, mi dijo anochi liri...
#para seguir mirando los  Stings mira  cadenes.sh
