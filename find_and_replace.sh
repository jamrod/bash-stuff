#!/bin/bash
# set -x
[[ -z $1 ]] && prog=grep || prog=$1
[[ -z $2 ]] && term=and || term=$2
[[ -z $3 ]] && replacement=CANNED || replacement=$3
[[ -z $4 ]] && out=testout.txt || out=$4
pat="\b$term\b"
man $prog | gsed -E "s/$pat/$replacement/g" > $out