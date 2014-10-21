#!/bin/sh


# The format will be
# hostname##IP##OS##OS-version##platform##no of cpus x type of speed##physical mem


HN=`hostname`
#IP=`ifconfig -a | grep 'inet addr:' | grep -v '127.0.0.1' | cut -d":" -f2 | awk '{ print $1 }' | tr '\n' ','`
OS=`uname`
#OSVER=`cat /etc/redhat-release`
OSVER=$(uname -r)
PLAT=`uname -m`
#NOCPU=`grep processor /proc/cpuinfo | wc -l`
#CPUTYPE=`grep 'model name' /proc/cpuinfo | tail -1 | awk -F":" '{ print $2 }'`
#CPUSPEED=`grep MHz /proc/cpuinfo | tail -1 | awk -F":" '{ print $2 }'`
#MEMORY=`grep MemTotal /proc/meminfo | awk -F":" '{ print $2 }'`
#MANU=$(dmidecode -s system-manufacturer)
#MODEL=$(dmidecode -s system-product-name)
#SN=$(dmidecode -s system-serial-number)
#echo "$HN##$IP##$OS##$OSVER##$PLAT##$NOCPU##$CPUTYPE##$CPUSPEED MHz##$MEMORY##$MANU##$MODEL##$SN"
echo "$HN##IP##$OS##$OSVER##$PLAT"
