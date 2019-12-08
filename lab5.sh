#!/bin/bash
#script de forma interactiva para las instrucciones que se piden en el lab1 dentro del repositorio de linux-labs https://github.com/tuxtter/linux-labs/blob/master/Linux-basic-Labs/linux-lab2.sh
#este funciona mediante 2 arreglos en los que se guardan los textos de las instrucciones y las respuestas
array=('grep "linux" hello'
'grep -r "Hello" .'
'grep -n "linux" hello'
'grep -v "world" hello'
'wc -L hello'
'echo -e "col1 col2 r1\ncol5 col6 r2\ncol3 col4 r3 " >> new.txt'
"cut -f1 -d' ' new.txt"
"cut -f3 -d' ' new.txt"
'paste -s hello new.txt'
'sort new.txt'
'diff hello linux.txt')
txt=('Buscar la palabra "linux" en el archivo hello'
'Busca la palabra "Hello" en toda la carpeta actual'
'Busca la palabra "linux" en el archivo hello, imprimiendo el numero de linea del archivo'
'Despliega las lineas que no coinciden con el patron de busqueda'
'Encuentra la linea mas larga dentro del archivo hello'
'Ejecuta lo siguiente para agregar contenido a los archivos new.txt y linux.txt'
'Muestra solo la primer columna del archivo new.txt'
'Extrae la tercer columna del archivo new.txt'
'Mezcla las lineas de los archivos hello y new.txt'
'Ordena el contenido del archivo new.txt'
'Compara el contenido del archivo hello y linux.txt')
#contadores para que cada vez que se responda bien aumente N y pase a la siguiente pregunta junto con su respuesta correcta como igual si se responde mal sube el contador de las respuestas malas
N=0
texxt=0
cont=0
clear
while true
do
	
	if [ ${N} -le 10 ];
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

