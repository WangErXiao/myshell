#!/bin/bash
function diskspace {
    clear
    df -k
}

function whoseon {
    clear
    who
}
function memusage {
    clear
    cat /proc/meminfo
}

function menu {
    clear
    echo
    echo -e "\t\t\tSys Admin Menu\n"
    echo -e "\t1.Dispaly disk space"
    echo -e "\t2.Dispaly logged on users"
    echo -e "\t3.Dispaly memory usage"
    echo -e "\t0.Exit menu\n\n"
    echo -en "\t\tEnter option: "
    read -n 1 option
}
while [ 1 ]
do
    menu
    case $option in
    0)
        break ;;
    1) 
        diskspace ;;
    2)
        whoseon ;;
    3)
        memusage ;;
    *)
        clear
        echo "Sorry, wrong selection" ;;
    esac
    echo -en "\n\n\t\t\t Hit any key to continue"
    read -n 1 line
done
