#!/bin/sh

help()
{
 	cat<< HELP
		this is help!!
		Hello world
	HELP
	exit(0);
}
error(){

	echo "$1"
	exit 1
}
help;
