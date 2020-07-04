#!/bin/bash
#primero que todo repasar el tema de los parametros.
#Los parametros se pasam a ima fimcopm poniendolo al lado del nombre en el 
#momento de llamarla como por ejemplo en funcion1 1 2 2 3 separados por un espacio
#y para poder acceder a ellos se utiliza $1, $2, ...


funcion1(){
#la $0 imprime el nombre del script
    echo $0
#la $# imprime el numero de variables    
    echo $#
#la $@ imprimer todas las variables que les has passado
    echo $@
#la $$ la ID del proceso script
    echo $$
    ans=$(($1+$2))
#La $? imprime la salida del ultimo proceso
    echo $?
    #Salida: en este caso, como no hay ultimo proceo , imprime 0
    echo $ans
    echo $?
    return 1
}
funcion1 2 2 3
#aqui imprimira el valor de 1 que es lo que devuelbe el ultimo proceso.
echo $?

#para declarar una  funcions, se puede declarar de varias formas:
#directamente el nombre y los  ( ) { } o con la palabra function delante
#si se pone en una linia hay que tener en cuenta que al final de las instrucciones 
#siempre se pone ; para separarlas 

funcion2(){ echo -n "soy el script $0 "; echo "paso a la proxima funcion";}
#aprovecho para explicar que echo es una funcion y que admite parametros 
#la foma seria echo <opciones> "String" . En el caso anterior -n lo que haria es que
#anularia el salto de linia del primer echo
#si ponemos -e  utilizara los caracteres expeciales \n, \r, \t, \v, \\, \b
function funcion3(){
echo "imprime la variable ans = $ans de la funcion1 proque es global"
}

funcion2
funcion3

#En bash el return es para el control de errores en una funcion, ya  solo puede passar
#numeros enteros del 0 al 255 y no retorna valores como en otros lenguages de programacion.
#Les variables por norma seran globales si no se especifica lo contrario.
#Utilizaremos las variables para optener los valores deseados.
funcion4(){
    local suma=$(($1+$2))
    echo "la suma de los parametros es $suma"
}
variable=$(funcion4 2 2)
echo $variable
echo $suma
#Salida: no imprime nada porque suna es una variable local.


funcion5(){
    if [ $# -gt 0 ]; then
    echo "la funcion ha recibido $# argumentos"
    else 
    echo "la funcion no ha recibido argumentos"
    fi
}
funcion5
funcion5 23

# Podemos utiliar alguna otra funcion que este en otro archivo
#con source le decimos que ejecute el arshico funcionesPrueva  y
#llamamos a la funcione.
source ./funcionPrueva.sh
echo $(sumar  6 2)

