#!/bin/bash
# set -x
[[ -z $1 ]] && prog=grep || prog=$1
[[ -z $2 ]] && term=and || term=$2
pat="\b$term\b"
declare -i count
count=$( man $prog | grep -E $pat -i -c )
echo $count