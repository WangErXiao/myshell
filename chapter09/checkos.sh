#!/bin/sh

if test $# -eq 1; then
	os=$1
	echo "input os is $os"
fi

if test -z "$os"; then
	os=`uname -s 2>/dev/null`
	echo "current os is $os"
fi
