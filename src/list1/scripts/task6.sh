#!/bin/bash
grep -E '(\b[[:alpha:]]+\b).*\b\1\b' $(find $1 -type f)
