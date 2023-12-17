#!/bin/bash
user=$(id -u)

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

yum install mysql -y
VALIDATE $? "Installing mysql"

yum install git -y
VALIDATE $? "Installing git"