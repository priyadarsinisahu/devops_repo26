#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

SOURCE=$1

if [ ! -d "$SOURCE" ]; then
    echo "Directory does not exist"
    exit 1
fi

NAME=$(basename "$SOURCE")
DATE=$(date +%Y-%m-%d)

tar -czf "${NAME}_${DATE}.tar.gz" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup successful"
else
    echo "Backup failed"
fi
