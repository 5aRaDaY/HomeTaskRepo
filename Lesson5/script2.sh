#!/bin/bash

for file in /etc/*
do
if [ -d "$file" ]
then 
  echo "$file is directory"
fi
done > etc_dir.txt
echo "finished."
