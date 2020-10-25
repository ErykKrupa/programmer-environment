#!/bin/bash
for file in $(find $1 -type f)
do
    echo $file:
    cat $file
    printf '\n'
done
