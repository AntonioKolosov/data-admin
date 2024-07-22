#!/usr/bin/bash

echo "Today is " `date`
echo "Start the local data db and load the data" 

docker compose -f dt-adm.yaml -p ${USER}-data-admin up -d
