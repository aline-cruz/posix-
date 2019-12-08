#!/bin/bash
echo "for simple: "
for i in a b c d e f g h i
do
	echo "letra $i"
done

nombres="indigo sten asier pello roberto"
echo "for simple para correr un array: "
echo "particiones en la 4party"
for i in ${nombres}
do
	echo ${i}
done

echo "for con ficheros"
for i in *.sh
do
	ls -lh ${i}
done

echo "for clasico"
for [cont=0 ; ${cont}<10 ; let cont=${cont}+1]
do
	echo "ahora valgo ${cont}"
done

