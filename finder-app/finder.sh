#!/bin/bash

filesdir="$1"
searchstr="$2"

# Ensure the parameters are provided
if [ -z "$filesdir" -o -z "$searchstr" ];then
    echo 'At least one parameter missing' 1>&2
    echo 'Usage: ./finder.sh <filesDir> <searchStr>' 1>&2
    exit 1
fi

# filesdir must be a valid directory
if [ ! -d "$filesdir" ];then
    echo 'Invalid directory' 1>&2
    exit 1
fi

numberOfFiles=$(grep -lr $searchstr $filesdir | wc -l)
numberOfLines=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $numberOfFiles and the number of matching lines are $numberOfLines"
