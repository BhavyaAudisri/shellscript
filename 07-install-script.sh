#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then    
    echo " you must have root access "
    exit 1
fi
dnf list installed mysql

if [ $? -ne 0 ]
then    
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo " installing mysql... failure "
        exit 1
    else
        echo " installing mysql .... success "
    fi
else
    echo " mysql is already installed "
fi