#!/bin/bash
#script de forma interactiva para las instrucciones que se piden en el lab1 dentro del repositorio de linux-labs https://github.com/tuxtter/linux-labs/blob/master/Linux-basic-Labs/linux-lab2.sh
#este funciona mediante 2 arreglos en los que se guardan los textos de las instrucciones y las respuestas
array=('du'
'du -xh'
'cp -v hello.txt dir2'
'cp -v hello.txt dir2/file2.txt'
'cp -vr  dir2/*.txt dir2/dir3'
'cp -vr dir2/dir3 .'
'ls'
'md5sum hello.txt'
'mv hello.txt dir/2/dir3/dir4/hi.txt'
'ls'
'mkdir dir5'
'mv dir2/*.txt dir5'
'mv dir5 dir50'
'ln dir2/dir3/dir4/hi.txt hello'
'ln -s dir2/dir3/dir4/hi.txt softlink'
'rm -i file2.txt'
'rm -ir dir50/*'
'rmdir dir50')
txt=('despliega en pantalla el uso del disco de la carpeta actual'
'Despliega en pantalla el uso del disco de la carpeta actual en un formato legible'
'Copia el archivo hello.txt a la carpeta dir2'
'copia y renombra el archivo hello.txt a dir2/file2.txt'
'Copia todos los archivos con la extension .txt de la carpeta dir2 a la carpeta dir2/dir3'
'copia la carpeta dir2/dir3 al directorio actual'
'muestra el contenido de la carpeta actual'
'verifica la integridad de los archivos copiado hello.txt'
'mueve el archivo hello.txt a dir2/dir3//dir4/hi.txt'
'muestra el contenido de la carpeta dir4'
'crea la carpeta dir5'
'Mueve todos los archivos de texto en dir2 hacia dir5'
'renombra la carpeta dir5 en dir50'
'Crea un enlace llamado "hello" desde el directorio actual hacia dir2/dir3/dir4/hi.txt'
'crea un acceso directo llamado "softlink"desde el directorio actual hacia dir2/dir3/dir4/hi.txt'
'elimina el archivo file2.txt de forma interactiva'
'elimina de forma interactiva y recursiva el contenido de dir5'
'elimina el directorio dir50'
)
#contadores para que cada vez que se responda bien aumente N y pase a la siguiente pregunta junto con su respuesta correcta como igual si se responde mal sube el contador de las respuestas malas
N=0
texxt=0
cont=0
clear
while true
do
	
	if [ ${N} -le 17 ];
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

