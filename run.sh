#!/bin/bash

mkdir -p ./log

for server_idx in {001..100}
do
    server="n$server_idx"
    ssh $server "$HOME/net-speedcheck/server.sh" &
    for client_idx in {001..100}
    do  
        client="n$client_idx"
        if [ $client -le $server ]
        then
            continue
        fi
        ssh $client "$HOME/net-speedcheck/client.sh $server"
        echo $server-$client
    done
    ssh $server "$HOME/net-speedcheck/kill-server.sh"
done