#!/bin/bash


filename=$1

for ip in `cat $filename`
do
	( ping -c 1 ${ip} > /dev/null 2>&1 && echo ${ip} >> ${filename}.ping ) || echo ${ip} >> ${filename}.noping
	
done
