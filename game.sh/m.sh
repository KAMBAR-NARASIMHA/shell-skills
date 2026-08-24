#!/bin/bash

bomb=$((RANDOM % 10 + 1))

echo "💣 DON'T PICK THE BOMB!"
echo "Choose a number from 1 to 10"

while true; do
    read -p "Choose: " n

    if (( n == bomb )); then
        echo "💥 BOOOOOOM!"
        echo "Game over."
        break
    else
        echo "😎 Safe! Pick again..."
    fi
done