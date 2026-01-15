#!/bin/bash
distros=$(ls 04-15-build-logs)
for file in ${distros[@]}; do
  echo ${file%s}
 mv ~/04-15-build-logs/${file} ~/04-15-build-logs/${file%s}
done
