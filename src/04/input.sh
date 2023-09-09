#!/bin/bash

hostname=$(hostname)
timezone=$(timedatectl | grep 'Time zone' | cut -d: -f 2)
date=$(date -R | cut -d' ' -f 2-5)
user=$USER
#uptime=`awk '{print int($1)/60}' /proc/uptime`
uptime=`echo $(awk '{print $1}' /proc/uptime) / 60 | bc`
uptime_sec=`scale=2 ;awk '{print int($1)/60}' /proc/uptime`
os=$(hostnamectl | grep 'Operating System' | cut -d: -f 2)
# ip=`ip r | grep src | cut -d' ' -f9`
ip=`hostname -I`
mask=`ifconfig enp0s3 | awk '/netmask/{split($4,a,":"); print a[1]}'`
# gateway=`grep gateway /etc/netplan/00-installer-config.yaml | cut -d: -f2`
gateway=`ip r | awk '/default/ {split($3,a); print a[1]}'`
# ram_total=`free -b | awk '/Mem/ {split($2,a); printf("%.3f", a[1]/1024/1024/1024)}'`
ram_total=`free -b | awk '/Mem/ {split($2,a); printf("%.3f", a[1]/2^30)}'`
ram_used=`free -b | awk '/Mem/ {split($3,a); printf("%.3f", a[1]/2^30)}'`
ram_free=`free -b | awk '/Mem/ {split($4,a); printf("%.3f", a[1]/2^30)}'`
space_root=`df -k /home | awk '/dev/ {printf("%.2f", $2/1024)}'`
space_root_used=`df -k /home | awk '/dev/ {printf("%.2f", $3/1024)}'`
space_free=`df -k /home | awk '/dev/ {printf("%.2f", $4/1024)}'`