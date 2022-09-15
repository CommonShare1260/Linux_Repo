#!/bin/bash

counter=0
#source $HOME/domain.txt
#for i in "${domain_list[@]}"
#do
#   echo "${domain_list[counter]}"
#   let counter=counter+1
#done
#echo "$counter"


Domain_list=()
while read addr
do
    Domain_list+=($addr)
    let counter=counter+1
done < $PWD/domain.txt

echo "$counter"
for i in ${!Domain_list[*]}; do
	echo "Login to "${Domain_list[i]}
done
