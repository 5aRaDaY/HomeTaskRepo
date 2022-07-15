#!/bin/bash

#скрипт,  который выполняет поиск исполняемых файлов (только файлов) в /usr/bin; /usr/sbin с выводом в текстовый файл executables

for file in /usr/bin/* /usr/sbin/* 
do
	if [ -f "$file" ] && [ -x "$file" ]
	then
		echo "$file"
  fi
done > executables.txt
echo "Search and output of executable files has been completed."
