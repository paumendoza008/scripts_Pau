#!/bin/bash

# TODO: Aquí se deberá hacer un chequeo 

for i in $(cat $1) ; do
	#TODO: generar un aviso informando de lo que se está haciendo
	ssh root@$i init 0
done;

# TODO: generar un resumen informando de lo realizado
# Esto es todo