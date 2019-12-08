#!/bin/bash
funcion(){
	echo "se ah recibido una senal: ${FUNCNAME} ${0}"
	#exit
}

trap "funcion" INT QUIT TSTP
while true
do 
	sleep 2
	echo "ufff que sueno"
done
