#!/bin/bash

error=0
text_error="Sorry, you should enter four different options.\n(1 - white, 2 - red, 3 - green, 4 - blue, 5 – purple, 6 - black)"
digits=[1-6]
if [[ ${a1} != $digits || ${a2} != $digits || ${a3} != $digits || ${a4} != $digits ]]; then
echo -e ${text_error} oopp
error=1
exit 1
elif [[ ${a1} == ${a2} || ${a3} == ${a4} ]]; then
echo -e ${text_error}
error=1
exit 1
fi