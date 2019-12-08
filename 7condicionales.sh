#!/bin/bash
boolean=true
otrobool=!${boolean}
test ${otrobool} || echo "ahora es falso"

valor=6
test $valor -le 6 && echo "se cumple"

nuevo=${valor}
test ${nuevo} -eq ${valor} && echo "son los mismos"

echo "ahora ${nuevo} es lo mismo que ${valor}"
