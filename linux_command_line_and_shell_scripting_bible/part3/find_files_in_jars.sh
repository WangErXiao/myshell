#!/bin/bash
if [ $# -ne 1 ]
then
    echo "Usge: $0 /tmp"
    exit -1;
fi
dir=$1;

find ${dir} -iname '*.jar' | while read jarFile;do
    jar tf ${jarFile} | while read file;do
        echo "${jarFile}"\!"${file}"
    done
done
