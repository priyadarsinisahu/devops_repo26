#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE1=$1
FILE2=$2

if [ -f "$FILE1" ] && [ -f "$FILE2" ]; then
    echo "file exists and file name $FILE1 and $FILE2"
else
    echo "file does not exist"
fi

