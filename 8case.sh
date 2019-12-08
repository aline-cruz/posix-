#!/bin/bash
echo "una variable"
read variable
if  [${variable} -gt 0 ];
then
	echo "${variable} es mayor que 0"
fi

if [ -e /etc/shadow ]
then
	echo "ok, parece que tienes un sistema con shadow pass"
fi

echo "otra variable"
read vari

if [ ${vaor} -lt 0 ]
then
	echo "${vari} es menor que 0"
else
	echo "${vari} es mayor que0";
fi

echo -n "mete un valor"
read valor1
echo -n "otro valor"
read valor2
echo "has introducido los valores ${valor1} y ${valor2} "
if [ ${valor1} -gt ${valor2} ]
then
	echo "$valor1 es mayor que $valor2"
elif [ ${valor1} -lt ${valor2} ]
then
	echo "$valor1 es menor que  ${valor2}"
else
	echo "$valor1 y $valor2 son iguales"
fi
test -f './fichero.txt' || touch fichero.txt
