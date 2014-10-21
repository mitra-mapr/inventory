#!/bin/bash

SSH_OPTS='-o StrictHostKeyChecking=no -n'
filename=$1

for ip in `cat $filename`
do
	found=0
	for pw in `cat clear.txt`
	do
		if sshpass -p "$pw" ssh ${SSH_OPTS} ${ip} echo hello > /dev/null 2>&1  ; then
		   echo ${ip} >> ${filename}.${pw}
		   found=1 # Found
		   break ;
		fi
	done
	 [[ $found -eq 0 ]]  && echo ${ip} >> ${filename}.dontknowpw

done
