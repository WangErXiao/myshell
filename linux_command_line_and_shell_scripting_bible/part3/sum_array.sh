#!/bin/bash
function sumarray {
    local myarray;
    local sum=0;
    myarray=$@;
    echo ${myarray[*]}
    for var in ${myarray[*]}
    do
       sum=$[ $sum + $var ]
    done
    echo $sum
}
myarray=(1 2 3 4 5 6)
echo  "the original array is ${myarray[*]}"
arg1=`echo ${myarray[*]}`;
rel=`sumarray $arg1`;
echo "the result is $rel"

