#!/bin/bash

#скрипт,  который проверял бы файлы в папке /usrі/sbin и находил из них только те, у которых есть атрибут на запуск и чтение. Список таких файлов выводится в файл usr_executables.txt

for file in /usr/sbin/*
do
	if [ -f "$file" ] && [ -r "$file" ] && [ -x "$file" ]
	then
		echo "$file"
  fi
done > usr_executables.txt
echo "finished."

#Вариант2
#Использован grep rwxr-xr-x (+ write by owner) т.к. если искать строго read и execute (r-xr-xr-x) то не найдет ни одного файла.

<<com
for file in $(ls -l /usr/sbin/* | grep rwxr-xr-x)
do
  if [ -f $file ]
  then
	echo "$file"
  fi
done > usr_executables.txt
echo "finished."
com

