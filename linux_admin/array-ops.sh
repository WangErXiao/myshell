#!/bin/bash

array=( zero one two three four five )

echo ${array[0] }
echo ${array:0}
echo ${array:1}

echo "---------------------------------"
echo ${#array[0]}
echo ${#array}

echo ${#array[1]}
echo ${#array[*]}
echo ${#array[@]}
