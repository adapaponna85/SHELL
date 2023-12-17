#!/bin/bash

user=$(id -u)

validate_user ()
{
    if ($user -gt 0)
then
{ 
    echo "$user is not authorized to install! please get the root access to proceed."
}
else 
    {
        echo "Proceeding to installation step :"
        execute()

    }
fi
}

status ()
{
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
}

execute() 
{
sudo yum install mysql -y
status ()
sudo yum install git -y
status ()
}
