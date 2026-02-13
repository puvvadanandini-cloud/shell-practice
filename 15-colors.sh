#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privilege"
    exit 1 #Failure is other than 0
fi

VALIDATE(){

if [ $1 -ne 0 ]; then
    echo  -e " Installing $2....$R FAILURE $N"
    exit 1
else
    echo "Installing $2 ....$G SUCCESS $N"
fi    
}
dnf list installed mysql 
#install if it is not found
if [ $? -ne 0 ]; then
dnf install mysql -y
VALIDATE $? "MYSQL"
else
    echo "MYSQL already exists....$G SKIPPING"
fi  

dnf list installed nginx
if [ $? -ne 0 ]; then
dnf install nginx -y
VALIDATE $? "Nginx"
else
    echo  -e "nginx already exists....$G SKIPPING"
fi  

dnf list installed nginx
if [ $? -ne 0 ]; then
dnf install python3 -y
VALIDATE $? "python"
else
    echo -e "python already exists....$Y SKIPPING"
fi  
