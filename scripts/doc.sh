#!/bin/bash

src=$1
dest=$2

mkdir -p $(dirname $dest)

case $dest in
  *.[13])
    ronn --roff $1 --pipe --organization=1602\ Software --manual=CompoundJS > $2
    exit $?
    ;;

  *.html)
    ronn -5 $1 --pipe\
      --style=toc\
      --organization=1602\ Software\
      --manual=CompoundJS > $2
    exit $?
    ;;
esac
