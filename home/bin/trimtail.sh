#!/bin/sh

TEMPFILE=temp123456
echo $# files to handle
until [ $# -eq 0 ]
do
  sed -e 's/[[:space:]]*$//' $1 > $TEMPFILE
  rm -f $1
  mv $TEMPFILE $1
  shift
done


