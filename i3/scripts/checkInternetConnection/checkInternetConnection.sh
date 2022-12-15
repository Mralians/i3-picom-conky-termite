#!/usr/bin/env bash

set -u
#set -e
#set -x

_INTERVAL=1
cd "<CHANGE-ME>" ||
  exit 1

while sleep ${_INTERVAL} ;
do
  nc -zw1 google.com 443 >/dev/null 2>&1
  if [[ $? -ne 0 ]];then
    echo "offline " > "internet_status"
  else
    echo "online " > "internet_status"
  fi
done
