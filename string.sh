#!/bin/bash
read -p "Enter your Region :" Region
if [ -z $Region ]; then
    echo " Please Give a Valid Input"

else
    CHECK=$(curl -sL https://ec2.$Region.amazonaws.com/)
    if [ ${CHECK}='' ]
    then
    echo "Invalid Region"
    else
    echo "Your Region is $Region "
    aws ec2 describe-vpcs --region $Region | jq .Vpcs[].VpcId
    fi
fi




