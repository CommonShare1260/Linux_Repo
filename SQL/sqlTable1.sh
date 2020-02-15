#!/bin/bash

username="root"
password="apaul123"
database="learning"

echo "UserName : " ${username}
echo "Password : " ${password}
echo "Datebase : " ${database}
echo "-----------------------------------------------"
declare -a cmd

cmd[0]="tableLearn.sql"

echo "		Creating Databse"
echo "-----------------------------------------------"

for i in ${cmd[*]}; do
mysql -s -u${username} -p${password} -D${database}<${i}> /dev/null 2>/dev/null
echo "creating... " ${i}
echo "done! "
done

echo "Successfully created DataBase !!!!"
