#!/bin/bash
user=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE()
{
if [ $1 -ne 0 ]
then
echo "Error: $2 failed"
exit 1
else
echo "$2 success"
fi
}

if [ $user -ne 0 ]
then 
echo "You are not a root user, login as root user to proceed"
else
echo "Proceeding for installation as ROOT user"
fi

yum install mysql -y &>> LOG_FILE
VALIDATE $? "Installing mysql"

yum install git -y &>> LOG_FILE
VALIDATE $? "Installing git"