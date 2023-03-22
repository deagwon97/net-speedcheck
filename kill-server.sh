#!/bin/bash
server_hpc=`hostname`
server=${server_hpc:0:4}
server_pid=`netstat -nlp | grep 15122 | awk '{split($7,a,"/");print a[1]}'`
echo "kill server $server " $server_pid
kill -9 $server_pid
