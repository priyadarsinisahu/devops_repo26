#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

DIR=$1

if [ -d "$DIR" ]; then
    echo "$DIR exists"
else
    echo "$DIR does not exist"
fi
