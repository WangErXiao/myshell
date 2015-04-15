#!/bin/bash

#Filename:match_palindrome

if [ $# -ne 1 ]
then
echo "Usage: $0 mathch_palindrome_rev"
fi

word=$1
if [ "$word" == "$(echo $word | rev )"  ]
then
 echo "$word is palindrome"
else
 echo "$word is not palindrome"
fi





