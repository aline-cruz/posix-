#!/bin/bash
echo -n "nombres "
read nombre
echo ${nombre} una parte ${nombre:8} y otra ${nombre:8:4}

sinvalor=
echo "variable sinvalor: ${sinvalor:-31337} eta ${vacio:-'miguel induarin'}"
echo "la variable sinvalor no tiene ningun valor $sinvalor"

prog='sniffit'
echo "valor de programa: ${prog+'tcpdump'} y ahora $prog"
echo "valor de ${ejemplo:?'roberto'} y luego {ejemplo}"
for i in ${!p*};do echo $i ;done
