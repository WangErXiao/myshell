#!/bin/bash
### find cycle in maven depnedency tree
 
if [ $# -gt 0 ];then
    sourcepath=$1
else
    sourcepath=`pwd`
fi
if [ ! -f "$sourcepath/pom.xml" ]; then
    echo "$sourcepath is not a vaild maven project!"
    echo 'Usage : ./findcycle [path]'
    exit 1;
fi
mvn=`which mvn`
if [ "$mvn" = "" ];then
    echo "counld not found mvn in PATH,exit!"
    exit 1;
fi
 
cd $sourcepath
echo "scan cycle dependency in $sourcepath ..."
mvn dependency:tree -Dverbose | awk -F '- ' '{if( index($2,"maven-dependency-plugin")>0 ){ indent=0;}else{ indent=length($1); }stack[indent]=$2;if( index($1,"for cycle")>0 ){print "****found cycle****";for(i=0;i<=indent;i++){if(stack[i]!=null){print "->"stack[i]}}}}'
echo "scan finished!"
