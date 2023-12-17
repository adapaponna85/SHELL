#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ]
then
{ 
    echo "$user is not authorized to install! please get the root access to proceed."
    exit 1
}
fi
yum install mysql -y
if [ $? -ne 0 ] 
then
{
    echo "installation failed with exit status: {$?}"
    exit 1
}
else
{
echo "MySQL Installation complete"
}
fi
yum install git -y
if [ $? -ne 0 ] 
then
{
    echo "installation failed with exit status: {$?}"
    exit 1
}
else
{
echo "GIT Installation complete"
}
fi