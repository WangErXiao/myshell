#!/bin/bash

main(){
selfPID="$$"
scriptFile="$0"

typeset existingPid
existingPid=`getExistingPIDs $selfPID "$scriptFile"`

if [ ! -z "$existingPid" ]; then
  echo "The script already running, exiting..."
  exit -1
fi

doItsTask

}

#获取除本身进程以外其它运行当前脚本的进程的 PID
getExistingPIDs(){
selfPID="$1"
scriptFile="$2"

ps -ef | grep "/usr/bin/ksh ${scriptFile}" | grep -v "grep" | awk "{ if(\$2!=$selfPID) print \$2 }"
}

doItsTask(){
echo "Task is now being executed..."
sleep 20  #睡眠 20s，以模拟脚本在执行需要长时间完成的任务
}

main $*


