#!/bin/bash

if [ -z "$1" ]; then
    echo "please give a light to switch"
    exit 0
fi

USER=$(cat user)
URL="http://192.168.0.8"

curl -X "PUT" --data "{\"on\": false}" ${URL}/api/${USER}/lights/$1/state
echo -e "\n"
