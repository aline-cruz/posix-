#!/bin/bash
#script de forma interactiva para las instrucciones que se piden en el lab1 dentro del repositorio de linux-labs https://github.com/tuxtter/linux-labs/blob/master/Linux-basic-Labs/linux-lab2.sh
#este funciona mediante 2 arreglos en los que se guardan los textos de las instrucciones y las respuestas
array=('ps'
'sleep 60 &'
'ps'
'kill 1234'
'ps'
'kill -p 1234'
'sleep 30 &'
'killall sleep'
'killall -u user'
'killall -w find'
'pidof bash'
'top'
'pstree'
'time ls -l')
txt=('Ejecuta el comando ps y analiza su salida'
'Crea un nuevo proceso'
'Ejecuta ps y analiza su salida'
'Mata el proceso creado en el paso 2'
'Verifica con ps si el proceso sigue vivo'
'Obliga al proceso a morir enviando la señal -9'
'Inicia dos procesos mas'
'Mata los procesos asociados al comando "sleep"'
'Mata todos los procesos asociados al usuario actual (Reemplaza "user" con tu nombre de usuario)'
'Mata todos los procesos asociados al comando "find" ejecutados por el usuario actual.'
'Obten el PID del proceso bashUtiliza el comando top para visualizar los procesos'
'Utiliza el comando top para visualizar los procesos'
'Utiliza el comando pstree y analiza su salida'
'Verifica el tiempo que tarda en ejecutarse un comando')
#contadores para que cada vez que se responda bien aumente N y pase a la siguiente pregunta junto con su respuesta correcta como igual si se responde mal sube el contador de las respuestas malas
N=0
texxt=0
cont=0
clear
cc=$(pidof sleep)

while true
do
	
	if [ ${N} -le 14 ];
	then
        echo  ${txt[N]}
	if [ ${N} -eq 3 ];
	then
            echo "el pid del proceso es $cc"
	fi
	echo "					intentos: $cont"
	read tt
	if [ "${tt}" == "${array[N]}" ]
	then
		if [ ${N} -gt 0 ] && [ ${N} -le 3 ];
                then
                    if [ "${tt}" == "sleep 60 &" ];
		    then
			    echo "[1] 1234"
			    let N=${N}+1
			    sleep 1
			    clear
		    fi
		    if [ "${tt}" == "ps" ];
		    then
			    echo " PID  TTY        TIME   CMD "
			    echo "2071 pts/0   00:00:00   bash"
			    echo "1234 pts/0   00:00:00   sleep"
			    echo "3479 pts/0   00:00:00   ps  "
			    let N=${N}+1
			    sleep 1
			    clear
		    fi
                    if [ "${tt}" == "kill 1234" ];
		    then
			    echo "[1]+ terminated          sleep 60"
			    let N=${N}+1
			    sleep 1
			    clear
		    fi
		else
		let N=${N}+1
		${tt}	
	sleep 1
	clear
fi
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
