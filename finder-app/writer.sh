#!/bin/bash

writefile="$1"
writestr="$2"

# Ensure the parameters are provided
if [ -z "$writefile" -o -z "$writestr" ];then
    echo 'At least one parameter missing' 1>&2
    echo 'Usage: ./finder.sh <writeFile> <writeStr>' 1>&2
    exit 1
fi


pathToWrite=$(dirname $writefile)
mkdir -p $pathToWrite

# If the directory
if [ ! -d $pathToWrite ];then
    echo 'Cannot create the path' 1>&2
    exit 1
fi

echo $writestr > $writefile 
