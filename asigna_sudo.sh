#!/bin/bash

for i in $(cat $1) ; do

	ssh root@$i usermod -a -G sudo alumno
	ssh root@$i chmod a+w /etc/sudoers
	scp asigna_sudo_segon.sh root@$i:/root
	ssh root@$i /root/asigna_sudo_segon.sh
	ssh root@$i rm asigna_sudo_segon.sh
	ssh root@$i chmod a-w /etc/sudoers
	echo Modificando sudoers en $i
done;
