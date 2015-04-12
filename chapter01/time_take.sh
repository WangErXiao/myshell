#!/bin/bash
#Filename: time_take.sh
start=$(date +%s)
echo 'calculating ........'

for i in `seq 100000`
do
 if((i%1000==0))
 then
    echo $i
    continue
 fi
done
end=$(date +%s)
difference=$((end -start))
echo Time taken to execute commands is $difference seconds.
