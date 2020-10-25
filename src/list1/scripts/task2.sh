#!/bin/bash
for file in $(find $1 -type f)
do
    tr ' ' '\n' < $file | tr -s '\n' '\n'
done | sort | uniq -c
