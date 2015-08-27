#!/bin/bash
netstat -an | awk '/^tcp/{ ++S[$NF]} END { for( a in S) print a , S[a]  }'
#netstat -tan | awk '{ ++S[$NF]} END { for( a in S) print a , S[a]  }'

