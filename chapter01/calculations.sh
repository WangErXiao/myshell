#!/bin/bash

no=0;
no1=4;
no2=5;
let result=no1+no2
printf "%-5s \n" $result

let no+=6
let no-=5
printf "%-5s \n" $no

no3=2;
no4=4;
result=$[ $no3 + $no4 ]
echo $result
