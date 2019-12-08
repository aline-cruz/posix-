#!/bin/bash
#script de forma interactiva para las instrucciones que se piden en el lab1 dentro del repositorio de linux-labs https://github.com/tuxtter/linux-labs/blob/master/Linux-basic-Labs/linux-lab2.sh
#este funciona mediante 2 arreglos en los que se guardan los textos de las instrucciones y las respuestas
array=('touch file1.txt' 'touch file1.txt' 'touch file2.txt'  'dir' 'clear' 'echo "hello"' 'echo "hello" > hello.txt' 'echo "linux" >> hello.txt' 'echo "world" >> hello.txt' 'cat hello.txt' 'head hello.txt' 'tail -2 hello.txt' 'tail hello.txt' 'stat hello.txt' 'stat dir1')
txt=('crear el archivo file1.txt'
'cambia el timestamp del archivo file1.txt'
'crea el archivo file2.txt'
'despliega el contenido del directorio actual usando un comando direfente a ls'
'limpia el contenido de la terminal' 'despliega el texto "hello"'
'redirige la salida del comando anterior hacia un archivo'
'adjunta el texto "linux" al archivo hello.txt'
'adjunta el texto "world" al archivo hello.txt'
'despliega en la pantalla el contenido del archivo hello.txt'
'despliega en la pantalla el contenido del archivo hello.txt usando el comando head'
'despliega solo las ultimas dos lineas del archivo hello.txt'
'despliega las ultimas lineas del archivo hello.txt'
'muestra las estadisticas para el archivo hello.txt'
'muestra las estadisticas para la carpeta dir1')
#contadores para que cada vez que se responda bien aumente N y pase a la siguiente pregunta junto con su respuesta correcta como igual si se responde mal sube el contador de las respuestas malas
N=0
texxt=0
cont=0
clear
while true
do
	
	if [ ${N} -le 14 ];
	then
        echo  ${txt[N]}
	echo "					intentos: $cont"
	read tt
	
	if [ "${tt}" == "${array[N]}" ]
	then
		let N=${N}+1
		$tt
	
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
rm -R comandos/file1.txt
rm -R comandos/file2.txt
