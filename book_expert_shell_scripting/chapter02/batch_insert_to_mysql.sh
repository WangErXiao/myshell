#!/bin/bash

MySqlLogin="mysql -uroot -proot"
i=1000000
while [ $i -gt 0 ]
do
    ${MySqlLogin} -e "insert into test.people_class value($i,$i);" &
    sleep 0.0001
    ((i--))
done
