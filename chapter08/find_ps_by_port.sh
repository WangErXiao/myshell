#!/bin/bash
#filename: find ps by port
if [ $# -ne 1 ]
then
	echo 'Usage find_ps_by_port  eg: find_ps_by_port 9999';
	exit -1;
fi
if [ $1 -gt 65536 -o $1 -lt 0 ]
then
	echo 'Usage find_ps_by_port  eg: find_ps_by_port 9999';
	exit -1;
fi
port=$1
netstat -ntlp | grep $port 

