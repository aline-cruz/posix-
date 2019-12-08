#!/bin/bash
#script de forma interactiva para las instrucciones que se piden en el lab1 dentro del repositorio de linux-labs https://github.com/tuxtter/linux-labs/blob/master/Linux-basic-Labs/linux-lab1.sh
#este funciona mediante 2 arreglos en los que se guardan los textos de las instrucciones y las respuestas
array=('pwd' 'mkdir -v dir1' 'mkdir -v dir2'  'mkdir -v dir2/dir3' 'mkdir -v dir2/dir3/dir4' 'ls' 'ls -R' 'cd dir2' 'cd -' 'cd')
txt=('verificar director actual' 'crea la carpeta "dir1"' 'crea la carpeta "dir2"' 'crea la carpeta "dir3" dentro de "dir2"' 'crea la carpeta "dir4" dentro de "dir3"' 'lista el contenido del directorio actual' 'lista todos los archivos en la carpeta actual de forma recursiva' 'cambiarse a la carpeta dir2' 'regresa a la carpeta anterior' 'cambiate a la carpeta home del usuario')
#contadores para que cada vez que se responda bien aumente N y pase a la siguiente pregunta junto con su respuesta correcta como igual si se responde mal sube el contador de las respuestas malas
N=0
texxt=0
cont=0
clear
while true
do
	
	if [ ${N} -le 9 ];
	then
        echo "ingrese el comando para ${txt[N]}"
	echo "					intentos: $cont"
	read tt
	
	if [ "${tt}" == "${array[N]}" ]
	then
		let N=${N}+1
		${tt}
	pwd	
	sleep 1
	clear
	else
		clear
		let cont=${cont}+1
	#en este entra al archivo error.sh en el cual hay otros if con respecto al contador de las respuestas incorrectas y apartir de eso mandar mensajes a la pantalla
	source ./error.sh
	fi
else
	break
fi
done
echo "tuviste ${cont} errores"
#se borran los archivos dir1 y el contenido de dir2 que fueron creados en algunas intrucciones
rm -R comandos/dir1/
rm -R comandos/dir2/
