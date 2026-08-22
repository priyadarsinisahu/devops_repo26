#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <service-name>"
    exit 1
fi

SERVICE=$1

if systemctl is-active --quiet "$SERVICE"; then
    echo "$SERVICE is running"
else
    echo "$SERVICE is not running"
fi
