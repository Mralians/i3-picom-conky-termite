#! /usr/bin/env bash


set -u
set -e
#set -x

_PIC_PATH_VER="<CHANGE_ME>"
_PIC_PATH_HOR="<CHANGE_ME>"

case "${1}" in
  'v')

    /usr/bin/xrandr -o 3
    /usr/bin/feh "${_PIC_PATH_VER}" --bg-fill
    ;;
  'h')
    /usr/bin/xrandr -o normal
    /usr/bin/feh "${_PIC_PATH_HOR}" --bg-fill
    ;;
esac
exit 0
