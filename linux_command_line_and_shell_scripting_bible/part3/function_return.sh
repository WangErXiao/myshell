#!/bin/bash
function getVal {
    read -p "Enter a value: " value
    return $[ $value * 2 ]
}
rel=`getVal`
echo "The new value is $rel"
