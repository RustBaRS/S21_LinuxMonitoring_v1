#!/bin/bash

functionOutput() {
echo "HOSTNAME = ${hostname}
TIMEZONE = ${timezone}
USER = ${user}
OS = ${os}
DATE = ${date}
UPTIME = ${uptime} min
UPTIME_SEC = ${uptime_sec} sec
IP = ${ip}
MASK = ${mask}
GATEWAY = ${gateway}
RAM_TOTAL = ${ram_total} GB
RAM_USED = ${ram_used} GB
RAM_FREE = ${ram_free} GB
SPACE_ROOT = ${space_root} MB
SPACE_ROOT_USED = ${space_root_used} MB
SPACE_ROOT_FREE = ${space_free} MB">myfile ; cat myfile
}