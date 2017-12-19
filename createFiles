#! /bin/bash

for i in $(seq 1 100)
do
  echo "Creating $i th file"
  FNAME=$(mktemp -p $(pwd))
  dd if=/dev/urandom of=$FNAME bs=256k count=1
  echo $FNAME >> fnames.txt
  echo "Created file with the name $FNAME"
 done
