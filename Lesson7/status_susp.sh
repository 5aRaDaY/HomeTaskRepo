#!/bin/bash

#Написать скрипт типа предыдущего который бы посылал сигнал SIGTSTP (-18) и выводил в командную строку в течение  30 секунд “process $name $pid suspended”

name="apache2"
pid=`ps -ef | grep root | grep "$name" | awk '{print $2}'`

if [ -n "${pid}" ]
then
	sudo kill -SIGTSTP $pid
	count=1	
		while [ $count -le 6 ]
		do
			echo "process $name $pid suspended"
			sleep 5
			count=$(( $count + 1 ))
		done		
else
    echo "Process $name not found"
fi
