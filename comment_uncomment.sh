#!/usr/local/bin/bash

cd ../test-comment-uncomment

for file in *; do
  echo $file
  sed -i '/mirrorlist=http:/s/^/#/' $file  # comment out mirrorlist lines
  sed -i '/baseurl=http/s/^#//' $file  # uncomment baseurl lines
done
