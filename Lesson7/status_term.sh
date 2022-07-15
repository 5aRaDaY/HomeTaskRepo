#!/bin/bash

#Модифицировать предыдущий скрипт, чтобы он проверял наличие демона в памяти через 10 секунд после команды stop и если он еще работает посылал бы команду SIGTERM (-9)

name="apache2"
PID=`ps -ef | grep root | grep "$name" | awk '{print $2}'`

if [ -n "${PID}" ]
then
	sudo kill -15 $PID
    echo "Process $name $PID stopped"
else
    echo "Process $name is not running"
fi

sleep 10

PIDCheck=($(pgrep "$name"))

if [ -n "${PIDCheck}" ]
then
	for pid in $PIDCheck 
	do 
		sudo kill -9 $pid 
	done
    echo "$name daemon process have been terminated"
else
    echo "No daemon process found"
fi
