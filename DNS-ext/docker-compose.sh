#!/bin/bash

SITE=$1

if [ "$SITE" == "BX" ]; then
    docker-compose -f docker-compose-BXL.yml up $2
elif [ "$SITE" == "AN" ]; then
    docker-compose -f docker-compose-ANV.yml up $2
fi

# Example: 
# ./docker-compose.sh BX   
# ./docker-compose.sh AN -d  