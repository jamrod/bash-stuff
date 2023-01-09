#!/bin/sh
x=$1
echo $x
# you code here
out=""
for (( i=0 ; i < ${#x} ; i++))
do
  tmp=${x:i:1}
  echo $tmp
  add=
  case "$tmp" in
    A)
      add=T
    ;;
    T)
      add=A
    ;;
    G)
      add=C
    ;;
    C)
      add=G
    ;;
  esac
  out=$out$add
done

echo $out