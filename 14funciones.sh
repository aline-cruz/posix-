#!/bin/bash

echo "select"
dis="debian ubuntu navarrux gentoo mandriva"
echo "selecciona la mejor opcion porfavor: ${resultado}"

select resultado in $dis
do
	(test ${#resultado} -ne 0) && break
	echo "seleccione la mejor opcion porfavor: ${resultado}"
done
echo "sistema seleccionado: [${resultado}] longitud de cadena: ${#resultado}"

	

