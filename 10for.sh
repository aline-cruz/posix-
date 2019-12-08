#!/bin/bash

nombre=""
echo -n "dame un nombre: (indigo, sten, asier, pello)"
read nombre

case ${nombre} in
	indigo)
		echo "$nombre dice: que hubo"
		;;
	sten)
		echo "$nombre dice: hola que tal?"
		;;
	asier)
		echo "$nombre dice: que tal compa?"
		;;
	pello)
		echo "$nombre dice: todo chido"
		;;
	*)
		echo "esto es invalido"
esac
