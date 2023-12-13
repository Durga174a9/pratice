#!/bin/bash

x=$(id -u)

if [[ $x -ne 0 ]]
then
    echo "mate you need to have root access to install"
    exit 1
else
    echo "you can install this pakages"
fi

checking(){
    if [[ $1 -ne 0 ]]
    then
        echo "ERROR:: $2 ...Failed"
        exit 1
    else
        echo "$2... Success"
    fi 
}

yum install mysql -y

checking $? "installing mysql"

yum install python -y

checking $? "installing python"