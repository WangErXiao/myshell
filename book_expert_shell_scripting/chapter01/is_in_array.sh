#!/bin/bash

array=(a b c e f g h i j k);
if [ $# -ne 1 ]
then
    echo "Usage: is_in_array x"
    exit -1
fi
if [[ "${array[@]}" =~ "$1" ]]
then
    echo "in array"
else
    echo "not in array"
fi
