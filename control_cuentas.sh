#!/bin/bash

# Test de requisitos

for i in $(cat $1) ; do

	#ssh root@$i userdel -r simm
	ssh root@$i userdel -r alumno
	#ssh root@$i adduser dai
	echo Anadiendo usuarios en $i
done;
