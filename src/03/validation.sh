#!/bin/bash

error=0
text_error="Sorry, you should enter four different options.\n(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)"
digits=[1-6]
if [[ ${1} != $digits || ${2} != $digits || ${3} != $digits || ${4} != $digits ]]
then
echo -e ${text_error}
error=1
exit 1
elif [[ ${1} == ${2} || ${3} == ${4} || $# != 4 ]]
then
echo -e ${text_error}
error=1
exit 1
fi