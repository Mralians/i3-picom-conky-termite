#! /usr/bin/env bash 

set -e 
set -u 

WALLPAPER="${HOME}/Pictures/fehWallpaper/"
declare -g NUM_PICS
cd "${WALLPAPER}" &&
pics=()
while : ;do
	for pic in *;do
		pics+=($pic)
	done
	NUM_PICS=${#pics[@]}

	feh --bg-fill ${pics[RANDOM % NUM_PICS]}
	sleep 100
done
set +e
set +u
