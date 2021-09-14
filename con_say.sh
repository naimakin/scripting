#!/bin/bash
start_t=`date +%s`

get_sessionTable(){
        tmsh show sys connection cs-server-addr 172.24.86.22 cs-server-port 389  >> /shared/tmp/conectisze_$(date +%F-%H).txt
}                                                                       

while (true)
do

_today=`date +%s`

 if ((  ($_today - $start_t) > 86400 )); then

        exit 10

 else

        get_sessionTable

fi
sleep 10
done

