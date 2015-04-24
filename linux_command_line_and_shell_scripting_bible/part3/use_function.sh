#!/bin/bash
function sayHello {
    echo "Hello world"
}

count=1
while [ $count -le 5 ]
do
    sayHello
    count=$[ $count + 1 ]
done
