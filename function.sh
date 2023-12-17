#!/bin/bash
user=$(id -u)

if [ $user -ne 0 ]
then 
echo "You are not a root user, login as root user to proceed"
else
echo "Proceeding for installation as ROOT user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then
echo "Installation failed"
exit 1
else
echo "Installation success"
fi

yum install git -y
if [ $? -ne 0 ]
then
echo "Installation failed"
exit 1
else
echo "Installation success"
fi