#!/bin/bash

START_TIME=$(date +%s)

sleep 10 &

END_TIME=$(dtae +%s)

TOTAL_TIME=$($END_TIME-$START_TIME)

echo "Script excuted in: $TOTAL_TIME seconds"