#!/bin/bash

#Напишите команду для задания default route для вашей машины с использованием сетевого интерфейса eth0.

#ip command to set a default router to 192.168.1.6:
sudo ip route add default via 192.168.1.6 dev eth0

#route command to set a default router to 192.168.1.6:
sudo route add default gw 92.168.1.6 dev eth0
