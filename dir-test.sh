#!bin/bash
# This just lists folders
DIR=$1
for dir in $DIR/*; do
  echo $dir
done

# to loop through files and folders: for item in $(ls $DIR); do echo $item; done
