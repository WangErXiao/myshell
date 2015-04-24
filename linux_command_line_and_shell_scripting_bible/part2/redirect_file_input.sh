#!/bin/bash
# redirecting file input
exec 0< time_out_input.sh
count=1
while read line
do
    echo "Line #$count:$line"
    count=$[ $count + 1]
done
