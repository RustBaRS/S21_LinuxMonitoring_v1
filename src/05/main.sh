#!/bin/bash
#my 5 scripts

. validation.sh
 
if [[ $error = 0 ]]; then
# начало скрипта
START=$(date +%s)

clear
. color.sh
. input.sh
. output.sh
print_top10_files $1
print_top10_exec_files $1

# конец скрипта
END=$(date +%s)
DIFF=$(( $END - $START ))
echo "Script execution time (in seconds) = $DIFF"
fi