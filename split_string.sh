#!/bin/bash
mystring="rhel ami-h456rth990j vol-1234"

item0=${mystring%% *}
echo $item0
temp=${mystring#* }
echo $temp
item1=${temp% *}
echo $item1
item2=${temp##* }
echo $item2

# myarr=($mystring)
# echo $myarr
# echo $mystring
echo 
echo $mystring > ../skip_build 
grep -E -o "\brhel\b" ../skip_build
grep -E -o "\bami-.* \b" ../skip_build
grep -E -o "\bvol-.*\b" ../skip_build
