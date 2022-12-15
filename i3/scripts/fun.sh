#! /usr/bin/env bash

trap exit_p SIGTERM SIGINT

exit_p(){
	stty echo
}
stty -echo
while true;do
	clear
	sleep 1
	printf "\n\n"
	figlet -f ANSI\ Shadow  -c "mralians"
	sleep 1
done


