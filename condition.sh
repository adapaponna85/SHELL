#!/bin/bash

user=$(id -u)

if ($user -gt 0)
then
{ 
    echo "$user is not authorized to install! please get the root access to proceed."
}
else 
    {
        echo "Proceeding to installation step :"
    }
fi
sudo yum install mysql -y
if ( ($?) -ne 0 )
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