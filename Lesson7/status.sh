#!/bin/bash

#скрипт status.sh, который проверял бы наличие запущенной задачи процесса apache (httpd) и, если она запущена отправлял бы ей команду stop и выводил бы надпись “Process $name $PID stopped”.

name="apache2"
PID=`ps -ef | grep root | grep "$name" | awk '{print $2}'`

if [ -n "${PID}" ]
then
	sudo kill -15 $PID
    echo "Process $name $PID stopped"
else
    echo "Process $name is not running"
fi
