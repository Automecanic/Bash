#!/usr/local/bin/bash
#Nom del programa: cadenas
#diremos cadenas o Strings al texto en general dentro de una variable.
cadena="Estaba el señor dongato, sentadito en su tejado"
cadena2="antonia"
cadena3=${cadena:6:17}


#Mayusculas minusculas  no me funciona en bash  3.2
#Para actualizar el bash en catalina no es possible  por el tema de licencias
#Mi solucion fue, instalar con brew la nueva version "brew install bash"
#en caso de no tener el brew busca como instalar "brew".
#agregar la direccion del nuevo bash, en mi caso "/usr/local/bin/bash" el terminal en /etc/shells
#cambiamos el shell como predeterminado con:
# sudo chsh -s /usr/local/bin/bash 
#Si comprobamos en el Terminal "bash -v" nos saldra la untima version
#recuerda de poner la nueva direccione en la cabecerea de los scripts.
#echo  ${cadena,} con una coma pone la primera en minuscula
#echo  ${cadena,,} pone toda la cadena

echo ${cadena2^} #pone la primera en mayusculas 
echo  ${cadena,} #pone la primera en minuscula todas en mayusculas.
#Salida:  Antonia
#Salida: estaba el señor.....
echo ${cadena2^^} #pone todas en mayusculas 
echo  ${cadena,,} #pone tosa en minuscula todas en mayusculas.
echo $cadena3 #imprime el substring  el  señor don gato
echo ${cadena/e/j}  #substituye la primera e por j
echo ${cadena//e/j}  #substituye todas las  "e" minusculas  por j

echo ${cadena#*a} #imprime desde la primera a
echo ${cadena##*a}#imprime desce la ultima a
echo ${cadena%a*} #imprime asta la ultima a
echo ${cadena%%a*} #imprime asta la primera a