#!/bin/bash

R="\e[31m"
Y="\e[33m"
G="\e[32m"
N="\e[0m"

SOURCE_FILE=$1
read $SOURCE_FILE

DESTINATION_FILE=$2
read $DESTINATION_FILE

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
else
    echo -e " $R Destination File is not detected $N"
    exit 1
fi

