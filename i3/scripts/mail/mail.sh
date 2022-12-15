#/usr/bin/env bash

set -u
set -e
#set -x

_MAIL_FILE="<CHANGE-ME>"

cd "${_MAIL_FILE}"

_INTERVAL=1
while sleep ${_INTERVAL} ;do
  _MSG="$(
  cat INBOX |
    grep -i 'subject' |
      grep -v 'Subject: =.*' |
        sed 's/Subject: //g' |
          tail -1 |
            tr '\n\r\t' ' '
  )"
  _TM="$(cat INBOX |
    grep -i ^date |
      tail -1 |
        sed 's/Date: //g' |
          grep -oE "[[:digit:]]{2}:[[:digit:]]{2}:[[:digit:]]{2}"
  )"
  printf "(( %s )) %s\n"  "${_TM}" "${_MSG}" > latest
done
