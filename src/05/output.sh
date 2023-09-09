#!/bin/bash

echo -e "Total number of folders (including all nested ones) = ${GREEN}${total_dir}${NORMAL}

TOP 5 folders of maximum size arranged in descending order (path and size):
${GREEN}${max_size_dir}${NORMAL}

Total number of files = ${GREEN}${total_file}${NORMAL}

Number of:  
Configuration files (with the .conf extension) = ${GREEN}${numbers_conf}${NORMAL} 
Text files = ${GREEN}${numbers_txt}${NORMAL}  
Executable files = ${GREEN}${numbers_exec}${NORMAL}
Log files (with the extension .log) = ${GREEN}${numbers_log}${NORMAL}  
Archive files = ${GREEN}${numbers_arc}${NORMAL}  
Symbolic links = ${GREEN}${numbers_link}${NORMAL}\n"

function print_top10_files {
  echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
  for num in {1..10}
  do
      file_line=$(find $1 2>/dev/null -type f -exec du -h {} + | sort -rh | head -10 | sed "${num}q;d")
      if ! [[ -z $file_line ]]
      then
      
          echo -n -e "${GREEN}$num -"
          echo -n "$(echo $file_line | awk '{print $2}'), "
          echo -n "$(echo $file_line | awk '{print $1}'), "
          echo -e "$(echo $file_line | grep -m 1 -o -E "\.[^/.]+$" | awk -F . '{print $2}')${NORMAL}"
          
      fi
  done
  echo ""
}

function print_top10_exec_files {
  echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
  for num in {1..10}
  do
      file_line=$(find $1 2>/dev/null -type f -executable -exec du -h {} + | sort -rh | head -10 | sed "${num}q;d")
      if ! [[ -z $file_line ]]
      then
          echo -n -e "${GREEN}$num - "
          echo -n "$(echo $file_line | awk '{print $2}'), "
          echo -n "$(echo $file_line | awk '{print $1}'), "

          path=$(echo $file_line | awk '{print $2}')
          MD5=$(md5sum $path | awk '{print $1}')
          echo -e "$MD5${NORMAL}"
      fi
  done
  echo ""
}