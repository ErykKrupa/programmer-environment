#!/bin/bash
for word in $(for file in $(find $1 -type f)
				do
					tr ' ' '\n' < $file | tr -s '\n' '\n'
				done | sort -u)
do
	printf "%s\n" $word 
	grep -w -r $word $1
	printf "\n"
done
