#!/bin/bash
# Gather System Performance Statistics
DATE=`date +%m/%d/%Y`
TIME=`date +%k:%M:%S`
echo "$DATE $TIME"
USERS=`who | wc -l`
echo "User Coutn: $USERS"
LOAD=`uptime | cut -d: -f5 | cut -d, -f3`
echo "LOAD: $LOAD"
#Memory Free
FREE=` free -m | awk 'NR==2 {print $4}' `
echo "Memory Free $FREE m"
#Swap Free
SWAP=`free -m | awk 'NR ==4{print $4}'`
echo "Swap Free: $SWAP m"
#CPU Idle
CPU=`vmstat  | sed -n '/[0-9]/p' | gawk '{print $15}'`
echo "CPU Idle :$CPU %"
#Free Disk
DISK=` df -m | awk '{a+=$4} END {print a}'`
echo "DISK Free $DISK m"
