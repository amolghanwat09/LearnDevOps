#!/bin/bash

#enable password auth login
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.org
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart

#Install require packages
yum install docker git python3 -y

#Start docker and enable it 
systemctl enable docker
systemctl start docker

#Create application user and add to docker group
pass=$(perl -e 'print crypt($ARGV[0], "password")' myecho)
useradd -m -p "$pass" "myecho"
groupadd docker
usermod -aG docker myecho