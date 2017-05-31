#!/bin/bash

result=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:9898)

if [[ $result -eq 200 ]]; then
    exit 0
else
    exit 1
fi
