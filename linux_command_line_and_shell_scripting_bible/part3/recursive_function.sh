#!/bin/bash
#recursive function
function factorial {
    if [ $1 -lt 1 ]
    then 
       echo 1     
    else
        local temp=$[ $1 -1 ]
        local result=`factorial $temp`
        echo $[ $result * $1 ]
    fi

}

read -p "Enter the num for factorial:" num;
if [ $num -lt 1 ]
then
    exit -1;
else 
    result=`factorial $num`
    echo "the result is $result"
fi
