#!/bin/bash

tmp=$(mktemp -d)
cd ${tmp}
svn export $2@$1 
for file in $(find $tmp -type f)
do
    tr ' ' '\n' < $file | tr -s '\n' '\n'
done | sort | uniq -c
rm -rf ${tmp}

