#!/bin/bash

SCRIPT="echo 'welcome'; pwd; ls -l"

HOSTS=("192.168.0.121" "192.168.1.122" "192.168.1.123")
USERNAMES=("ayush" "username2" "username3")
PASSWORDS=("9313286822" "password2" "password3")
for i in ${!HOSTS[*]} ; do
     echo "Login to "${HOSTS[i]}
     SCR=${SCRIPT/PASSWORD/${PASSWORDS[i]}}
     sshpass -p ${PASSWORDS[i]} ssh -l ${USERNAMES[i]} ${HOSTS[i]} "${SCR}"
done
