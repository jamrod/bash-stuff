#!/bin/bash
item=$1
value=$2

declare -A itemsRef=([a]=1 [b]=2)
echo ${itemsRef[a]}

itemsRef[$1]=$2

echo ${itemsRef[$1]}

for key in ${!itemsRef[@]}; do echo $key; done  # note the !

for value in ${itemsRef[@]}; do echo $value; done

[[ ${!itemsRef[@]} =~ $1 ]] && echo $1 is a key || echo $1 is not a key
[[ ${itemsRef[@]} =~ $2 ]] && echo $2 is a value || $2 is not a value

echo all the keys ${!itemsRef[@]}
echo all the values ${itemsRef[@]}
