#!/bin/bash

user=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0n"

validate ()
{
    if [ $? -ne 0 ] 
then
{
    echo -e "$R installation failed with exit status: {$?} $N"
    exit 1
}
else
{
echo -e "$G Installation complete $N"
}
fi
}

if [ $user -ne 0 ]
then
{ 
    echo -e "$R $user is not authorized to install! please get the root access to proceed. $N"
    exit 1
}
fi

yum install mysql -y
validate $? "Installing mysql"

yum install git -y
validate $? "Installing git"
