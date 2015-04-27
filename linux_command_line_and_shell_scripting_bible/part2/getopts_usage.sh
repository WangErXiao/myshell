#!/bin/bash

function c1() {
    cmd="rec app create -p readhat"
    while getopts :a:t:sn opt; do
        case $opt in
            a) cmd=$cmd" -a $OPTARG" ;;
            t) cmd=$cmd" -t $OPTARG" ;;
            s) cmd=$cmd" -s" ;;
            n) cmd=$cmd" -n --no-dns" ;;
            \?) echo "Invalid param" ;;
        esac
    done
    echo $cmd
}
c1 -a app1 -t perl-5.10 -s -n
