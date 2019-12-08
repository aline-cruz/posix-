#!/bin/bash
echo 'datos de la variable "una variable" '
read u
echo 'datos de tu nombre '
read t
echo 'un conjunto de nombres'
read c
booleano=true

echo "echemos un ojo a las variables"
echo "un numero: $u"
echo "un nombre $t"
echo "un grupo de nombres: $c"
echo " has invocado el script pasandome ${0} eta ${1} "
echo "me has pasado $# argumentos"
echo IDa: ${!} y $@
echo "mi directorio actual: ${PWD} y mi usario ${UID}"
