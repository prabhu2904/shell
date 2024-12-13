#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32]"
Y="\e[33m"
N="\e[0m"

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $ID -ne 0 ]
then
   echo -e "$R ERROR :: please run with root access $N"

else 
   echo -e  "$G you are a root user $N" &>> $LOGFILE

fi

yum install nginx -y &>> $LOGFILE