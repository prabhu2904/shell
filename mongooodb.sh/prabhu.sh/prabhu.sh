#!/bin/bash

ID=$(id -u)

TIMESTAMP="date +%F-%H-%M-%S"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"

if [ $ID -ne 0 ]
then
  echo "error : please run script with root access"
else
  echo "you are a root user"

fi

yum install nginx -y
if [ ID -ne 0 ]
then
  echo "error : please run script with root access... failed"
else
  echo "nginx installed sucess"

fi
yum install redis -y
if [ ID -ne 0 ]
then
  echo "error : please run script with root access... failed"
else
  echo "redis installed sucess"
fi  