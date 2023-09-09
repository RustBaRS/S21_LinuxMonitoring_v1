#!/bin/bash

error=0
text_error1="Sorry, you should enter 1 directory"
text_error2="Sorry, directory not exist"
text_error3="Sorry, directory must end with a slash"
digits=[1-6]
if ! [[ -n ${1} ]]; then
echo -e ${text_error1} 
error=1
exit 1
elif ! [[ -d ${1} ]]; then
echo -e ${text_error2}
error=1
exit 1
elif ! [[ ${1: -1} = "/" ]]; then
echo -e ${text_error3}
error=1
exit 1
fi