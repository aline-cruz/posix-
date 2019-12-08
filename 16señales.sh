#!/bin/bash
source libreria.sh
pantalla 69 123 "epa"
suamem 1337 3389 && echo "OK" || echo "ocurrio un error"
echo "resultado: ${RESULTADO} $!"
