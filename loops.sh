#!/bin/bash
user=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0n"

TIMESTAMP=$(date +%F %H %M %s)
echo $TIMESTAMP
if [ $user -ne 0 ]
then
echo -e "$R You are not authorized, please login as Root user $N"
exit 1
else
echo -e "$G Running as Root user $N"
fi