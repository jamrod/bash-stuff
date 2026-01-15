#!/bin/bash

declare -i count=0
while [[ $count -lt 5 ]]; do
  [[ $RANDOM -le 16000 ]] && echo less || echo more
  count=$(($count + 1))
done
