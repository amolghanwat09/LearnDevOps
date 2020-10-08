#!/bin/sh
yum install git -y
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.org
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart
adduser ansible -p '$6$5PttYJK5$x8fDAWg/gMKo89lppG/GFXqfa0NZUEysn0YyYF..veY1sTNUQbgHyY/qIhcd3n2OhR7k8DcODQHw7q0jE8roQ.'
mkdir /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
ssh-keygen -t rsa -f /home/ansible/.ssh/id_rsa -P ''
chown ansible:ansible /home/ansible/.ssh/ -R
cp /etc/sudoers /etc/sudoers.org
echo "ansible    ALL=(ALL)       NOPASSWD:ALL" >> /etc/sudoers