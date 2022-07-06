#!/bin/bash

#скрипт,  который использовал этот текстовый файл и выводил количество строк. Затем брал бы первые 10 результатов и обрезал путь к файлу по символу “/”, оставляя список только имен файлов. Затем перенаправлял в новый файл > cmd_names.

echo "Lines in usr_executables.txt file: $(cat ./usr_executables.txt | wc -l)"
head -n10 ./usr_executables.txt | cut -d / -f 4 > cmd_names