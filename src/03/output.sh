#!/bin/bash

echo -e "${array_bg[$1]}${array_font[$2]}HOSTNAME =${NORMAL}${array_bg[$3]}${array_font[$4]} ${hostname}${NORMAL}
${array_bg[$1]}${array_font[$2]}TIMEZONE =${NORMAL}${array_bg[$3]}${array_font[$4]} ${timezone}${NORMAL}
${array_bg[$1]}${array_font[$2]}USER =${NORMAL}${array_bg[$3]}${array_font[$4]} ${user}${NORMAL}
${array_bg[$1]}${array_font[$2]}OS =${NORMAL}${array_bg[$3]}${array_font[$4]} ${os}${NORMAL}
${array_bg[$1]}${array_font[$2]}DATE =${NORMAL}${array_bg[$3]}${array_font[$4]} ${date}${NORMAL}
${array_bg[$1]}${array_font[$2]}UPTIME =${NORMAL}${array_bg[$3]}${array_font[$4]} ${uptime} min${NORMAL}
${array_bg[$1]}${array_font[$2]}UPTIME_SEC =${NORMAL}${array_bg[$3]}${array_font[$4]} ${uptime_sec} sec${NORMAL}
${array_bg[$1]}${array_font[$2]}IP =${NORMAL}${array_bg[$3]}${array_font[$4]} ${ip}${NORMAL}
${array_bg[$1]}${array_font[$2]}MASK =${NORMAL}${array_bg[$3]}${array_font[$4]} ${mask}${NORMAL}
${array_bg[$1]}${array_font[$2]}GATEWAY =${NORMAL}${array_bg[$3]}${array_font[$4]} ${gateway}${NORMAL}
${array_bg[$1]}${array_font[$2]}RAM_TOTAL =${NORMAL}${array_bg[$3]}${array_font[$4]} ${ram_total} GB${NORMAL}
${array_bg[$1]}${array_font[$2]}RAM_USED =${NORMAL}${array_bg[$3]}${array_font[$4]} ${ram_used} GB${NORMAL}
${array_bg[$1]}${array_font[$2]}RAM_FREE =${NORMAL}${array_bg[$3]}${array_font[$4]} ${ram_free} GB${NORMAL}
${array_bg[$1]}${array_font[$2]}SPACE_ROOT =${NORMAL}${array_bg[$3]}${array_font[$4]} ${space_root} MB${NORMAL}
${array_bg[$1]}${array_font[$2]}SPACE_ROOT_USED =${NORMAL}${array_bg[$3]}${array_font[$4]} ${space_root_used} MB${NORMAL}
${array_bg[$1]}${array_font[$2]}SPACE_ROOT_FREE =${NORMAL}${array_bg[$3]}${array_font[$4]} ${space_free} MB${NORMAL}"
