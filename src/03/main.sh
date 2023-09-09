#!/bin/bash
#my 3 script
source validation.sh

if [[ ${error} == 0 ]]; then
source color.sh
source input.sh
source output.sh 
fi