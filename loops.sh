#!/bin/bash
user=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0n"

TIMESTAMP=$(date +%F-%H-%M-%s)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE()
{
if [ $1 -ne 0 ]
then
echo -e "$R Error: $2 Failed $N"
else
echo -e "$G $2 Success $N"
fi
}

if [ $user -ne 0 ]
then
echo -e "$R You are not authorized, please login as Root user $N"
exit 1
else
echo -e "$G Running as Root user $N"
fi

for package in $@
do
yum list installed $package &>> LOGFILE
if [ $? -ne 0 ]
then 
yum install $package -y &>> LOGFILE
VALIDATE $? "Installing $package"
else
echo -e "$Y $package is already installed $N"
fi
done