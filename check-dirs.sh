#!/bin/bash

dir1=policies/ate/scp/
files1=$(ls policies/ate/scp)
dir2=policies/cio/scp/
files2=$(ls policies/cio/scp)
echo
echo 'in ate not cio'
for fname in ${files1[@]}
do
  if [[ ! -a ${dir2}${fname} ]]; then
    echo $fname
  fi
done
echo
echo 'in cio not ate'
for fname in ${files2[@]}
do
  if [[ ! -a ${dir1}${fname} ]]; then
    echo $fname
  fi
done
