#!/bin/bash

read -r -p "Do you wish to save in a file? (\"Yes\"-Y/y, \"No\"-any button) " answer
Yes=[Yy]
if [[ $answer == $Yes ]]
then
echo "File saved"
name_of_file=`echo ${date} | sed "s/ /_/g; s/:/_/g"`
mv myfile  ${name_of_file}.status
#можно перенаправить сразу в файл
# functionOutput >  ${name_of_file}.status 
else
echo "File not saved"
rm myfile
fi