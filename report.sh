#!/bin/bash
for server_idx in {001..100}
do
    server="n$server_idx"
    echo "[$server]"
    for client_idx in {001..100}
    do  
        client="n$client_idx"
        if [ $client -le $server ]
        then
            continue
        fi
        if [ -f ./log/$server-$client.log ]
        then 
           cat ./log/$server-$client.log  | grep GBits | awk '{print $5 ";" }' | tail -n 1
        fi
    done
done