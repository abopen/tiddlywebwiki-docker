#!/bin/sh

cd /data

if [ ! -d wiki ]; then
    echo "wiki not found, creating one"
    twinstance wiki
fi

cd wiki
echo Launching wiki
twanager server 0.0.0.0 80
