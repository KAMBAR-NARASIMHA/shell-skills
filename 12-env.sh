#!/bin/bash

START_TIME=$(date +%s)

sleep 5 &   # run sleep in background
wait         # wait for background process to finish

END_TIME=$(date +%s)

TOTAL_TIME=$((END_TIME - START_TIME))

echo "Script executed in: $TOTAL_TIME seconds"
