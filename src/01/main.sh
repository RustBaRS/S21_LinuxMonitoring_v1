#!/bin/bash
if [ $# -eq 1 ]; then
  if [[ ! "$1" =~ ^[0-9.]+$ ]]; then
    echo "$1"
  else
    echo "The input parameter does not match the text format"
  fi
 else
  echo "Enter the one text parameter!"
fi