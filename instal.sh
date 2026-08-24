#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR: : Please run with root previage"
exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then 

echo "ERROR: :Installing MYSQL"
exit 1
else  

echo "Installing MYSQL is Successful"
exit 1
fi
