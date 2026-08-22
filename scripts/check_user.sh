#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USER_NAME=$1

if id "$USER_NAME" &>/dev/null; then
    echo "User $USER_NAME exists"
else
    echo "User $USER_NAME does not exist"
fi
