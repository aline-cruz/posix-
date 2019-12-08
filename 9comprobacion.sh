#!/bin/sh
if [ -e $1 ] && [ -f $1 ]
then
	echo "ok, existe"
else
	echo "no existe"
fi
if [! -e $1 ]
then
	echo "no existe"
fi
