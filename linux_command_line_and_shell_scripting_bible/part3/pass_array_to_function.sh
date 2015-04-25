#!/bin/bash
#trying to pass an array variable

function testit {
    local thisarray;
    thisarray=(`echo "$@"`);
    echo "The received array is ${thisarray[*]}" ;
}
myarray=(1 2 3 4 5)
echo "The original array is: ${myarray[*]}"
testit ${myarray[*]}


