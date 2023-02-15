#!/bin/sh

writefile=$1
writestr=$2

if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Not enough arguments were specified"
    exit 1
fi

mkdir -p "$(dirname "$writefile")" && touch "$writefile"

if [ ! -f "$writefile" ]; then
    echo "File could not be created"
    exit 1
fi

echo "$writestr" > "$writefile"