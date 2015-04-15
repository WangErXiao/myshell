#!/bin/bash
#Filename:use awk emulate tail
if [ $# -ne 1 ]
then 
   echo "Usage:$0 awk emualte tail"
   exit -1
fi
awk '{buffer[NR%4] = $0; } END { for(i=1;i<4;i++) { print buffer[i%3]} }' $1

