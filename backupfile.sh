#!/bin/bash

R="\e[31m"
Y="\e[33m"
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

SOURCE_FILE=$1

DESTINATION_FILE=$2

if [ -d "$SOURCE_FILE" ]
then
    echo -e " $Y Source File Located $N "
else
    echo -e " $R Source File is no detected $N "
    exit 1
fi

if [ -d "$DESTINATION_FILE" ]
then
    echo -e " $Y Destination File Located $N "
    cp -r "$SOURCE_FILE" "$DESTINATION_FILE"
    VALIDATE $? "Backing up the file"
else
    echo -e " $R Destination File is not detected $N"
    exit 1
fi

