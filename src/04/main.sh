#!/bin/bash
#my 3 script
. color_param.conf
. validation.sh

if [[ ${error} == 0 ]]; then
. color.sh
. input.sh
. output.sh 
fi