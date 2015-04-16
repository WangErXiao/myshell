#!/bin/bash
#Filename:pcpu_usage.sh
#Desciption: script to calculate cpu usage by process for  1 hour

total_time=6
time_unit=1

STEPS=$(( $total_time / $time_unit));
let counter=$STEPS
echo $counter
echo Watching CPU usage....;
while [ $STEPS > -1 ]
do
ps -eo comm,pcpu | tail -n +2 >> /tmp/cpu_usage.$$
sleep $time_unit
STEPS= $($STEPS - 1)
done
echo
echo CPU eaters :

cat /tmp/cpu_usage.$$ | awk '
{ process[$1]+=$2; } END{
    for( i in process){
        printf("%-20s %s\n",i, process[i]/6);
    }                       
                        
}' | sort -nrk 2 | head

rm /tmp/cpu_usage.$$







