#!/bin/bash

ipmiIP=$1

if [ -f "/usr/bin/yum" ]
then

	yum install OpenIPMI ipmitool -y
	service ipmi start
else
	apt-get install -y openipmi ipmitool
	service openipmi start
	/etc/init.d/openipmi start
fi

ipmitool lan set 2 ipsrc static
ipmitool lan set 2 ipaddress ${ipmiIP}
ipmitool lan set 2 netmask 255.255.255.0
ipmitool lan set 2 defgw ipaddr 10.10.141.1
ipmitool mc reset cold
