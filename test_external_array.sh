#!/usr/local/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. $SCRIPT_DIR/../external_array.sh


echo ${!STACKS[@]}
echo ${STACKS[publish]}
