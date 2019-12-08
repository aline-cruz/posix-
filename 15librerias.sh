#!/bin/bash
resultado=0
pantalla(){
echo "valores $0> $1 y $2 y $3"
}

sumame(){
echo "estamos en la funcion ${FUNCNAME}"
echo "parametros $1 y $2"
let resultado= ${1} + ${2}
return 0
}
boom(){
echo "no ejecutes esto"
boom
}

pantalla 3 4 "epa"
sumame 45 67 && echo "ok" || echo "ocurrio un error"
echo "resultado: ${RESULTADO} $!"
