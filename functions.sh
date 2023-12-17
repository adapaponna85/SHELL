#!/bin/bash

user=$(id -u)

validate ()
{
    if [ $? -ne 0 ] 
then
{
    echo "installation failed with exit status: {$?}"
    exit 1
}
else
{
echo "Installation complete"
}
fi
}

if [ $user -ne 0 ]
then
{ 
    echo "$user is not authorized to install! please get the root access to proceed."
    exit 1
}
fi

yum install $1 -y
validate

yum install $2 -y
validate
