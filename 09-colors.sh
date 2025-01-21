#!/bin/bash
userid=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
validate(){
    if [ $1 -ne 0 ]
    then
        echo -e " $2 .... $R failure "
        exit 1
    else
        echo -e " $2 ....$G success "
    fi
}
if [ $userid -ne 0 ]
then    
    echo " you must have root access "
    exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]
then    
    dnf install mysql -y
    validate $? " installing mysql "
else
    echo -e " mysql is already $Y installed "
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    validate $? " installing git "
else
    echo -e " git is already $Y installed "
fi