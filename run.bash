#!/usr/bin/bash

echo "Today is " `date`
echo "Start the data-feed-service and local data db, load the data" 

echo $1
echo $2

EXTERNAL_HTTPS=$1 docker compose -f dt-run.yaml -p ${USER}-data-admin up -d
if [ "$2" = log ] ; then
    docker logs -f -t df-srv-${USER}-data-admin
fi
