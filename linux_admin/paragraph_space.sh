#!/bin/bash
#paragraph-space.sh
if [ $# -ne 1 ]
then
    echo "Usage XXXXXXX"
    exit -1;
fi
mytext=$1;

MINLEN=45
while read line
do
    echo "$line"
    len=${#line}
    if [ "$len" -lt "$MINLEN" ]
        then echo
    fi
done < $mytext
exit 0
