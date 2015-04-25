#!/bin/bash
#local variable
function doubleValue {
   local rel=$[ $num * 2 ]
}
read -p "input a number:" num

rel=$num;
doubleValue
echo "rel = $rel , num=$num" 
