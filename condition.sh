#!/bin/bash

user=$(id -u)

if ($user -gt 0)
{ 
    echo "$user is not authorized to install! please get the root access to proceed."
}
fi
yum install mysql -y
status=$($?)
if ($status -gt 0)
{
    exit 1
    echo "installation failed, please verify the logs"
}
else
{
echo "Installation complete"
}
fi