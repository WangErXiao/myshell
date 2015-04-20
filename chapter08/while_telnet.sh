#!/bin/bash

i=100
while [ $i -ne 0 ]
do
    telnet localhost 9999 | awk 'NR==4 {print $0}';
    let i=($i-1);
done
