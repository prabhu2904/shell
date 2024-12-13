#!/bin/bash

ID=$(id -u)

$R="\e[31m"
$G="\e[32]"
$Y="\e[33m"
$N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [$ID -ne 0]
then
   echo "ERROR :: please run with root access"

else 
   echo " you are a root user"

fi   