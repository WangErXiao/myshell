#!/bin/bash
while [ -n "$*" ]
    do
        echo $1 $2 $3 $4
        shift
    done
