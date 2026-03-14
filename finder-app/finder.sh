#!/bin/bash

if [ $# -ne 2 ]; then
    echo "wrong number of arguments provided"
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "the path provided is not a dir"
    exit 1
fi

lines_num=`grep -r "$2" "$1" | wc -l`
files_num=`find "$1" -type f | wc -l`

echo "The number of files are $files_num and the number of matching lines are $lines_num"
