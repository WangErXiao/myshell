#!/bin/bash
while true; do X=$Y; sleep 1; Y=$(ifconfig eth0|grep RX\ bytes|awk '{ print $2 }'|cut -d : -f 2); echo "$(( Y-X )) bps"; done 
