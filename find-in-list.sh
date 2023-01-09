#!/bin/bash
set -x
list='oraclelinux8 rhel8 amznlinux2arm'
[[ -z $1 ]] && term=rhel8 || term=$1
pat="\b$term\b"
grep -E $pat <<< $list
[[ $? == 0 ]] && echo yup || echo nope
#
# grep -E "\brhel8\b" bash/skip_file
# [[ $? == 0 ]] && echo yup || echo nope
