#!/bin/bash

#скрипт,  который находил бы все файлы *.py  и записывал поток файлов в  file  py_scripts, а ошибки в py_errors.

find / -name "*.py" 1>py_scripts.txt 2>py_errors.txt
echo "finished."
