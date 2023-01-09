#!/bin/bash
# set -x
 mkdir ~/experiments/man-pages

 cd ~/experiments/man-pages

 for item in /bin/*; do
 	prog=${item##/bin/}
 	echo $prog
 	man $prog | col -b > $prog
 done

 echo man pages created