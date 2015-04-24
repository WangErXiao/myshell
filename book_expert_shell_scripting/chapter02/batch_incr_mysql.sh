#!/bin/bash
MySqlLogin="mysql -uroot -proot";

i=0;
while [ $i -lt 300 ]
do
    ${MySqlLogin} -e "update test.counter set cnt=cnt+1 where countkey=1;" &
    sleep 0.1
    let i++;
done


