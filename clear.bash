#!/usr/bin/bash

#!/usr/bin/bash
echo "Today is " `date`
echo "Stop the local metadata db and clean the metadata" 

docker compose -f dt-adm.yaml -p ${USER}-data-admin down -v