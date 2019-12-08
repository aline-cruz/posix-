#!/bin/bash
echo "estructura until"
cont=15
until [ ${cont} -lt 0];
do
	let cont=${cont}-1
	echo "el valor es ${cont}"
done
echo "valor final ${cont}"
