#!/bin/bash

ID=$(id -u)

TIMESTAMP="date +%F-%H-%M-%S"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
  echo "error :$R please run script with root access $N"
  exit 1
else
  echo "$G you are a root user $N"

fi

yum install nginx -y
if [ $ID -ne 0 ]
then
  echo "error : please run script with root access... failed"
  exit 1
else
  echo "$G you are a root user $N"

fi
yum install redis -y
if [ $ID -ne 0 ]
then
  echo "error : please run script with root access... failed"
  exit 1
else
  echo "redis installed sucess"
fi