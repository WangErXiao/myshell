#!/bin/bash
# factorial

if [ $# -ne 1 ]
then
    echo " $0 Usage eg: $0 4"
    exit -1;
fi

factorial=1;
num=$1;
for (( i=1; i <= $num ; i++ ))
do
#  let  factorial=$factorial*$i
    factorial=$[ $factorial * $i ]
done    

echo "result is : $factorial"
