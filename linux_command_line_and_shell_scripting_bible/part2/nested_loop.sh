#!/bin/bash

for ((i=0;i<5;i++))
do
    echo "Start with $i "
    for ((j=0;j<=i;j++))
    do
        echo "     num: $j"
    done
    
done
