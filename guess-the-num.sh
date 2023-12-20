#!/bin/bash

USER=$1

echo -e " $C ENTER YOUR NAME $N "
echo -e " $Black $WY You Have Only 3 Chances $N "
read NAME

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
BB="\e[44m"
C="\e[36m"
M="\e[35m"
WY="\e[47m"
BM="\e[45m"
B="\e[34m"
Black="\e[30m"

echo -e " $Y WELCOME TO THE GAME $1 $N "

TARGET=$(( ($RANDOM % 20) + 1 ))

MAX_ATTEMPTS=3
ATTEMPTS=0

while [ "$ATTEMPTS" -lt $MAX_ATTEMPTS ]
do
    echo -e " $BB ENTER YOUR GUESS $N (Attempt $((ATTEMPTS+1))) "
    read GUESS
    if [ $GUESS -eq $TARGET ]
    then
        echo -e " $M $BM CONGRATULATIONS $USER YOU WON THE GAME $N "
        exit 1
    elif  [ $GUESS -gt $TARGET ]
    then
        echo -e " $B YOUR GUESS IS GREATER THAN THE TARGET $N "
    else
            echo -e " $C YOUR GUESS IS LESS THAN THE TARGET $N "
    fi
    ((ATTEMPTS++))
done



