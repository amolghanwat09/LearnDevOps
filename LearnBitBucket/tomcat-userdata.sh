#!/bin/bash

#Install jdk
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm

#install tomcat
wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.38/bin/apache-tomcat-9.0.38.zip
unzip apache-tomcat-9.0.38.zip
cd /tmp/apache-tomcat-9.0.38/
mkdir /local/apps/tomcat -p 
mv * /local/apps/tomcat
chmod 755 /local/apps/tomcat/bin/*

#Create start and stop script
cat <<EOF > /local/apps/tomcat/start_tomcat.sh
JAVA_HOME=/usr/java/jdk1.8.0_141
PATH=$JAVA_HOME/bin:$PATH
/local/apps/tomcat/bin/startup.sh
EOF
cat <<EOF > /local/apps/tomcat/stop_tomcat.sh
#!/bin/bash
ps aux |grep startup.Bootstrap |head -n1 |awk '{print \$2}'|xargs kill -9
EOF
chmod 755 /local/apps/tomcat/start_tomcat.sh /local/apps/tomcat/stop_tomcat.sh
chown ec2-user:ec2-user /local/apps/* -R
