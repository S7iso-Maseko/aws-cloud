#!/bin/bash

read -p "Directory Name: " DIRECTORY_NAME

if [ -d "$DIRECTORY_NAME"]; then
    echo -e "Directory $DIRECTORY_NAME already exists\n\n"
else
    mkdir -p "$DIRECTORY_NAME"
    echo -e "Directory $DIRECTORY_NAME created\n\n"
fi

while true; do
    read -p "Enter terraform file name (type 'q' to exit): " FILENAME
    echo -e "\n"

    if [ "$FILENAME" == "q" ]; then
        echo "Exiting..."
        break
    fi

    touch "$DIRECTORY_NAME/$FILENAME"
    echo -e "$FILENAME created \n"
done

