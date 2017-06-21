#!/bin/bash

# TODO: Aquí se deberá hacer un chequeo 

if [ $# -ne 1 ]
	then
	echo "Error, por el número de parámetros"
	exit
fi

for i in $(cat $1) ; do
	#TODO: generar un aviso informando de lo que se está haciendo
	echo "Cerrando $i"
	ssh root@$i init 0
done;



# TODO: generar un resumen informando de lo realizado
# Esto es todo