#!/bin/bash
user=$(id -u)
R=\e[32m
G=\e[33m
Y=\e[31m
N=\e[0n

if [ $user -ne 0 ]
then
echo -e "$R You are not authorized, please login as Root user $N"
exit 1
else
echo -e "$G Running as Root user $N"
fi