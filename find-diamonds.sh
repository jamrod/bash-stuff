#!/bin/bash
# set -x
[[ -z $1 ]] && prog=grep || prog=$1
declare -i leastCount
for char in d i a m o n d s; do
	declare -i count
	count=$( man $prog | grep $char -i -c )
	[[ $leastCount -gt 0 ]] || leastCount=$count
	if [[ $count -lt $leastCount ]]
		then leastCount=$count
	fi
done

echo You can make $leastCount "'diamonds'" with the letters found in the man page for $prog
