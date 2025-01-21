#!/bin/bash
userid=$(id -u)
validate(){
    if [ $1 -ne 0 ]
    then
        echo " $2 .... failure "
        exit 1
    else
        echo " $2 .... success "
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
    echo " mysql is already installed "
fi

dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
    validate $? " installing git "
else
    echo " git is already installed "
fi