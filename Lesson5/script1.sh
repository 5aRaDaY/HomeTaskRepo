#!/bin/bash
for file in $(ls /usr/)
do
  if [ -x $file ]
  then
    echo "$file"
  fi
done > executable.txt
echo "finished."