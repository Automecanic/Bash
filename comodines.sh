#!/usr/local/bin/bash
#Nom del programa: comodines, expresiones regulares.
#consideramos comodines y expresiones regulares a los patrones de busqueda
#asi podemos decir que son una utilidad para seleccionar un archivo , directorio, nombre,...
#Los podemos utilizar en muchas funciones en bash como por ejemplo ls, rm, cp, etc...
#La que mas utiliza es las busquedas con 'grep '.
#los mas comunes son:
# ? reeprsentara un unico caracter  cat ?ola.txt Ho?a.txt  "entiende  Hola.txt, aola.txt, bola.txt, cola.txt.... o Hoca.txt, Hota.txt,..."
# * el asterisco funciona como comodin de todos los caracteres *.txt " entenderà todos los nombres delante del .txt"
# [ ]  lo utilizaremos para crear rangos
#[0-9]{3} numeros de 0-9  estara formado por tres numeros#li
#$ senyala la finalizacion de la valiable  /expresion*a$/  seria cualquier palabra que empiece por expresionblablabla acaba con a
#existe mucla literatura sobre el tema  puedes profuncizar mas  si buscas "expresiones regulares"
#puedes provar expresiones regulares online en "https://regex101.com"

#esperaria la entrada de entre 1 a 3 parametros, si es asi caria correcto y de lo contrario incorrecto
#hay que tener en cuenta los espacios entre el igual y los valore
condicion='[1-3]'
#aqui tambien da error en los espacios si no se ponen de la forma correcta
if [[ $# =~ $condicion ]]; then
    echo "correcto"
else
    echo "incorrecto"
fi

echo "Ingresa El nombre de la mascota"
read ruta

regla='K|R|D|N[a-z]*a$|y$'
#Empieza por R o K o D o N puede llevar  cualquier vocal en minuscula
#* puede repeterise las veces que se quiera y finalizar con a o con Y##

if [[ $ruta =~ $regla ]]; then
    echo "nom correcte $ruta"
else
    echo "Nom incorrecte"
fi

