#!/bin/bash

DIR="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ ! -d $DIR ]
then
    echo -e "$R Error File doesn't exists $N "
    exit 1
fi

FILES_TO_DELETE=$(find $DIR -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "Deleting file $line"
    rm -rf $line
done <<< $FILES_TO_DELETE