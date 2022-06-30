#!/bin/bash

for file in /usr/bin/*
do
  if [ -x $file ]
  then
    echo "$file is executable"
  fi
done > executable.txt
echo "finished."
