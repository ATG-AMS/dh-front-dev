#!/bin/bash

if [ -f /app/npm_done ]; then
    echo "npm install finished, the container is healthy"
    exit 0
else
    echo "npm install is not yet finished"
    exit 1
fi
