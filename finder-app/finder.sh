#!/bin/sh

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Not enough arguments were specified"
    exit 1
fi

if [ ! -d "$filesdir" ]; then
    echo "Wrong directory path"
    exit 1
fi

FILES=$(find "$filesdir" -type f | wc -l)

LINES=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $FILES and the number of matching lines are $LINES"
