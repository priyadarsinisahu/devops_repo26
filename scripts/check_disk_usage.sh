#!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "Disk Usage: $USAGE%"

if [ "$USAGE" -lt 70 ]; then
    echo "Status: NORMAL"
elif [ "$USAGE" -le 85 ]; then
    echo "Status: WARNING"
else
    echo "Status: CRITICAL"
fi
