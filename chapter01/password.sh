#!/bin/sh
#Filename: password.sh
echo  "Enter password: "
stty -echo
read password
stty echo
echo
echo $password
echo Password read.
