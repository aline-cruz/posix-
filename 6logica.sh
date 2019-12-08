#!/bin/bash
echo -n "valor1"
read valor1
echo -n "valor2"
read valor2

let resultado=${valor1}+${valor2}
echo "resultado: ${resultado}"

let resultado=${valor1}+${valor2}+3
echo "resultado: ${resultado}"

echo "otro valor1"
read valor1
echo "otro valor2"
read valor2
echo $valor1 y $valor2
let resul=$[${valor1}+${valor2}+2]
echo "ahora: ${valor1} + ${valor2} +2 = ${resul}"
let resul=$[${valor1}+$[${valor2} * 3]]
echo "ahora: ${valor1} + ${valor2} * 3 = ${resul}"
