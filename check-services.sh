#!/bin/bash
# systemctl list-unit-files --state=disabled --no-pager > temp/services
list="apmd arpwatch atd autofs chargen daytime discard gpm kudzu linuxconf lpd named netfs nfslock nscd pcmcia portmap radiusd ripd rstatd sendmail postfix smb snmptrapd zebra"

for item in ${list[@]}; do
#     echo $item
    grep -i ${item} temp/services
    $item
done
