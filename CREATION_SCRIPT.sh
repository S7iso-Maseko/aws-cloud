#!/bin/bash

read -p "Directory Name: " DIRECTORY_NAME

if [ -d "$DIRECTORY_NAME"]; then
    echo "Directory $DIRECTORY_NAME already exists\n"
else
    mkdir -p "$DIRECTORY_NAME"
    echo "Directory $DIRECTORY_NAME created\n\n"
fi

while true; do
    read -p "Enter terraform file name (type 'q' to exit): " FILENAME
    echo "\n"

    if [ "$FILENAME" == "q" ]; then
        echo "Exiting..."
        break
    fi

    touch "$DIRECTORY_NAME/$FILENAME"
    echo "$FILENAME created \n"
done

