#!bin/bash
dir=$1
for dir in $dir/*; do
  echo $dir
done