#!/bin/bash

echo -e "${array_bg[$a1]}${array_font[$a2]}HOSTNAME =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${hostname}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}TIMEZONE =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${timezone}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}USER =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${user}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}OS =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${os}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}DATE =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${date}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}UPTIME =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${uptime} min${NORMAL}
${array_bg[$a1]}${array_font[$a2]}UPTIME_SEC =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${uptime_sec} sec${NORMAL}
${array_bg[$a1]}${array_font[$a2]}IP =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${ip}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}MASK =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${mask}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}GATEWAY =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${gateway}${NORMAL}
${array_bg[$a1]}${array_font[$a2]}RAM_TOTAL =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${ram_total} GB${NORMAL}
${array_bg[$a1]}${array_font[$a2]}RAM_USED =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${ram_used} GB${NORMAL}
${array_bg[$a1]}${array_font[$a2]}RAM_FREE =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${ram_free} GB${NORMAL}
${array_bg[$a1]}${array_font[$a2]}SPACE_ROOT =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${space_root} MB${NORMAL}
${array_bg[$a1]}${array_font[$a2]}SPACE_ROOT_USED =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${space_root_used} MB${NORMAL}
${array_bg[$a1]}${array_font[$a2]}SPACE_ROOT_FREE =${NORMAL}${array_bg[$a3]}${array_font[$a4]} ${space_free} MB${NORMAL}"

echo -e "
Column 1 background = $def1 (${colors[$a1]})
Column 1 font color = $def2 (${colors[$a2]})
Column 2 background = $def3 (${colors[$a3]})
Column 2 font color = $def4 (${colors[$a4]})"