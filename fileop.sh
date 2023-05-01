#!/bin/bash
#Checking the status of the folder
if [ -d /tmp/testfolder ]; then
    echo "Folder Exists"
    if [ -f /tmp/testfolder/terraform_1.3.8_linux_arm64.zip ]; then
        echo "File Exists"
    else
        cd /tmp/testfolder
        echo "Dowloading terraform now"
        wget https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_linux_arm64.zip
        echo "Extracting Terraform"
        unzip terraform_1.3.8_linux_arm64.zip
        rm -f terraform_1.3.8_linux_arm64.zip
        ./terraform version
        ls -al /tmp/testfolder
    fi
else
    mkdir /tmp/testfolder
    if [ -f /tmp/testfolder/terraform_1.3.8_linux_arm64.zip ]; then
        echo "File Exists"
    else
        cd /tmp/testfolder
        echo "Dowloading terraform now"
        wget https://releases.hashicorp.com/terraform/1.3.8/terraform_1.3.8_linux_arm64.zip
        echo "Extracting Terraform"
        unzip terraform_1.3.8_linux_arm64.zip
        rm -f terraform_1.3.8_linux_arm64.zip
        ./terraform version
        ls -al /tmp/testfolder

    fi
fi
