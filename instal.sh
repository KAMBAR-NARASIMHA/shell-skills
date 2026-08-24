#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR: : Please run with root previage"

fi

dnf install mysql -y

if [ $? -ne 0 ]; then 

echo "ERROR: :Installing MYSQL"

else  

echo "Installing MYSQL is Successful"

fi
