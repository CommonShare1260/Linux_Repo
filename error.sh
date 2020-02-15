#!/bin/bash

errormessage=`mkdir /home/anilkumar/anil 2>&1 `
#errormessage= `pwd 2>&1`
echo  "YYYYY $errormessage"

if ["$errormessage" == ""];
then
   echo "success"
else
   echo "Not success"
fi
