#!/bin/bash

echo "all variables are passed to the script: $@"
echo "all variables are passed to the script: $*"
echo "script name: $0"
sleep 5 &
wait 
echo "cuurent wroking directory: $PWD"
echo "current who is running this script: $USER"
