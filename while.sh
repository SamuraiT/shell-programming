#! /bin/sh

exec 3<&0 < $1

while read LINE; do
  echo $LINE
done

exec 0<&3 3<&-
read HOGE
echo $HOGE
