evenodd(){
    LAST_DIGIT=`echo $1 | sed 's/\(.*\)\(.\)$/\2/'`
    case $LAST_DIGIT in 
        0|2|4|6|8) 
            echo 'even';
            return 1;;
        *)
            echo 'odd';
            return 0;;
    esac
}
