#!/bin/bash

for i in $(cat $1) ; do
	echo "--------====== Empezamos con $i "
	ssh root@$i passwd
done;

