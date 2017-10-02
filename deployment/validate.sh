#!/bin/bash
status_code=$(curl --silent --head 127.0.0.1:5000/index | grep HTTP/ | awk -F ' ' '{ print $2 }')

if [ $status_code == "200" ]; then
    exit 0
else
    exit 1
fi
