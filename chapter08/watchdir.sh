#/bin/bash
#Filename: watchdir.sh
#Decription: Watch dirctory access
path=$1
#Provide path of directory or file as argument to script
inotifywait -m -r -e create,move,delete $path -q
