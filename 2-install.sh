#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "ERROR: : Please run with root previage"
exit 1
fi

VALIDATE(){

if [ $1 -ne 0 ]; then 

echo "ERROR: :Installing $2 is Failure"
exit 1
else  

echo "Installing $2 is Successful"
exit 1
fi

}

dnf install mysql -y
VALIDATE $? "Mysql -y

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mangodb-mongosh -y
VALIDATE $? "manogodb"




