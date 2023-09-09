#!/bin/bash

total_dir=`sudo find $1 -type d | wc -l`
max_size_dir=`du -ha $1 2>/dev/null | sort -nr | head -n 5 | awk '{print FNR, "- " $2 ", " $1}' `
total_file=`sudo find $1 -type f | wc -l`
numbers_conf=`sudo find $1 -name "*.conf" | wc -l`
numbers_txt=`sudo find $1 -name "*.txt" | wc -l`
numbers_log=`sudo find $1 -name "*.log" | wc -l`
numbers_arc=`sudo find $1 -name "*.tar" -o -name "*.zip" -o -name "*.gz" -o -name "*.rar" | wc -l`
numbers_exec=`sudo find $1 -type f -perm /a=x | wc -l`
numbers_link=`sudo find -L $1 -xtype l | wc -l`