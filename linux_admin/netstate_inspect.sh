#!/bin/bash
PROCNAME=pppd
PROCFILENAME=status
NOTCONNECTED=65
INTERVAL=2

pidno=$( ps ax | grep -v "ps ax" | grep -v grep | grep $PROCNAME | awk '{ print $1 }' )

if [ -z "$pidno" ]
then
	echo "Not connected."
	exit $NOTCONNECTED
else
	echo "Connected.";echo
fi
while [ true ]
do
	if [ ! -e "/proc/$pidno/$PROCFILENAME" ]
	then
		echo "Disconnected."
		exit $NOTCONNECTED
	fi
netstat -s | grep "packets received"
netstat -s | grep "packets delivered"
sleep $INTERVAL
echo; echo
done
exit 0
