#!/bin/bash

#Install require softwares
#Install git
yum install git -y

#Install jdk
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm

#Install maven
cd /tmp
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
unzip apache-maven-3.6.3-bin.zip
mkdir /local/apps/maven -p
cd apache-maven-3.6.3
mv * /local/apps/maven/

#Create user and ssh keys
pass=$(perl -e 'print crypt($ARGV[0], "password")' jenkins)
useradd -m -p "$pass" "jenkins"
mkdir /home/jenkins/.ssh
ssh-keygen -t rsa -N "" -f /home/jenkins/.ssh/id_rsa
cd /home/jenkins/.ssh
cat id_rsa.pub > authorized_keys
chmod 700 authorized_keys
chown jenkins:jenkins /home/jenkins/.ssh -R
mkdir /local/apps/jenkins
chown jenkins:jenkins /local/apps -R