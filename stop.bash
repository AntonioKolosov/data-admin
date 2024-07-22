#!/usr/bin/bash

#!/usr/bin/bash
echo "Today is " `date`
echo "Stop the data-feed-service and local metadata db, clean the metadata" 

docker compose -f dt-run.yaml -p ${USER}-data-admin down -v