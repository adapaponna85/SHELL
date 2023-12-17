#!/bin/bash
user=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE()
{
if [ $1 -ne 0 ]
then
echo "$R Error: $2 failed $N"
exit 1
else
echo "$G $2 success $N"
fi
}

if [ $user -ne 0 ]
then 
echo "$R You are not a root user, login as root user to proceed $N"
else
echo "$G Proceeding for installation as ROOT user $N"
fi

yum install mysql -y &>> LOG_FILE
VALIDATE $? "Installing mysql"

yum install git -y &>> LOG_FILE
VALIDATE $? "Installing git"