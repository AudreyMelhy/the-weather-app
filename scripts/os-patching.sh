#!/bin/bash


# ubuntu = Ubuntu
# redhat = Red Hat Enterprise Linux
# centos = CentOS Linux
# amazon-ec2 = Amazon Linux

OS_NAME=$(cat /etc/*release |grep -w NAME |awk -F'"' '{print$2}')

if [ "$OS_NAME" == "Ubuntu" ]; then
    echo "This is $OS_NAME OS."
    sleep 5
    apt update -y
elif [ "$OS_NAME" == "Red Hat Enterprise Linux" ]; then
    echo "This is $OS_NAME OS."
    sleep 5
    yum update -y 
elif [ "$OS_NAME" == "CentOS Linux" ]; then
    echo "This is $OS_NAME OS."
    sleep 5
    yum update -y 
elif [ "$OS_NAME" == "Amazon Linux" ]; then
    echo "This is $OS_NAME OS."
    sleep 5
    yum update -y 
else
    echo "This should never be reached."
fi