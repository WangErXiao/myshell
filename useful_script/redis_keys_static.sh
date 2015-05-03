#!/bin/bash
redis-cli --scan |  while read line
do
  redis-cli DEBUG OBJECT "$line" | awk '{ print $4":"$5 }'
done | awk -F ':' '{counter[$2]+=$4; } END{ for ( i in counter ) print ( i,":" ,counter[i])} '


