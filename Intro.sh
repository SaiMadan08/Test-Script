#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R $2 Failed $N"
        exit 1
    else
        echo -e "$G $2 Installation Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e " $R You are not a root user $N "
    exit 1
else
    echo -e " $G You are a root user $N "
fi

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else
        echo "Already installed Skipping"
    fi
done