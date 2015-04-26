#!/bin/bash
# show count fo tcp connection stat.
netstat -tna | awk 'NR > 2 { s[$NF]++ 
}
END {
    for(v in s) {
        printf "%-12s%s\n", v, s[v]
    
    }

}
'
