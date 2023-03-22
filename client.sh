#!/bin/bash
client_hpc=`hostname`
client=${client_hpc:0:4}
server=$1
echo $server-$client
server_ip=`cat /etc/hosts | grep $server | grep 192.168.120 | awk '{print $1}'`
iperf -i 10 -p 15122 -c $server_ip > /home2/bdg/net-speed/log/$server-$client.log