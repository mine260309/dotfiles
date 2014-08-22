#!/bin/sh

TEMPFILE=temp123456
echo $# files to handle
until [ $# -eq 0 ]
do
  sed -i -e 's/[[:space:]]*$//' $1
  shift
done


