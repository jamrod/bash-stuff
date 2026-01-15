#!bin/bash
dir=$1
for folder in $dir/*; do
  echo rename ${folder} ${folder}-cs
  mv ${folder} ${folder}-cs
done
