#!/bin/bash
#Filename:case usage

if [ $# -eq 0 ]
then
echo " $0 usage -d dir -n name -l length"
fi
while [ -n "$*" ]
 do
    case   $1   in
    -d) shift; dir=$1;shift;;
    -n) shift; name=$1;shift;;
    -l) shift; length=$1;shift;;
    *)  shift;;
    esac
 done

 printf "dir: $dir\n"
 printf "name:$name\n"
 printf "length:$length\n" 


