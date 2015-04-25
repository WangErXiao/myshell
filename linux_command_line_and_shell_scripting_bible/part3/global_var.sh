#!/bin/bash
#using a global variable to pass a value

function doubleVal {
    value=$[ $value * 2 ]
}

read -p "Enter a value:" value
doubleVal

echo "The new value is: $value"
