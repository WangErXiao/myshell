#!/bin/bash
#Filename: find the 10 most frequently-used commands

cat ~/.bash_history | awk '{print list[$1]++; } 
        END{ 
           for ( i in list ) {
                printf("%s\t%d\n",i,list[i]);
           } 
        }' | sort -nrk 2 | head

