#!/bin/bash
if [ -z "$1" ]
then
    echo "Uasge: `basename $0` filename"
    exit 0
fi
tr a-z A-Z < "$1"
exit 0
