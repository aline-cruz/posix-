#!/bin/bash
echo "while en marcha"
cont=0
while ( ${cont} -lt 100 );
do
	let cont=${cont}+10
	echo "el valor es ${cont}"
done
echo "el valor final es ${cont}"
