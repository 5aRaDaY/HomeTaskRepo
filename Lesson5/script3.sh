#!/bin/bash

for file in $(ls -laShR /var/log/*)
do
  if [ -f $file ]
  then
    filesize=$(ls -lh $file | awk '{print  $5}')
    echo "$filesize	$file"
  fi
done >> var-log1.txt

	# The second version
find /var/log -type f -exec du -h {} + | sort -hr >> var-log2.txt

echo "finished."
