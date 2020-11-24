#!/bin/sh
wget https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_linux_amd64.zip
unzip terraform_0.12.23_linux_amd64.zip -d /home/ec2-user/bin
mkdir /home/ec2-user/terraform
cd /home/ec2-user/terraform
chown ec2-user:ec2-user /home/ec2-user/terraform /home/ec2-user/bin -R