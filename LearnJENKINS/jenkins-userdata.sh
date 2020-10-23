#!/bin/bash
yum install git -y
cd /tmp
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u141-b15/336fa29ff2bb4ef291e347e091f7f4a7/jdk-8u141-linux-x64.rpm
rpm -ivh jdk-8u141-linux-x64.rpm

cd /tmp
wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.zip
unzip apache-maven-3.6.3-bin.zip
mkdir /local/apps/maven -p
cd apache-maven-3.6.3
mv * /local/apps/maven/

mkdir /local/apps/jenkins /local/apps/jenkins/bin /local/apps/jenkins/logs /local/apps/jenkins/home -p
cd /local/apps/jenkins
#wget http://mirrors.jenkins.io/war-stable/2.235.2/jenkins.war
wget https://get.jenkins.io/war/2.263/jenkins.war
chown ec2-user:ec2-user /local/apps/* -R

cd bin

cat <<EOF > start_jenkins.sh
#!/bin/bash
ROOT_DIR=/local/apps/jenkins
JENKINS_HOME=/local/apps/jenkins/home
JENKINS_URL=/local/apps/jenkins

for i in \$ROOT_DIR \$JENKINS_HOME \$ROOT_DIR/logs
do
  if [ ! -d  \$i ]
  then
    mkdir \$i
  fi
done

#If you are using port other than 8080
#HTTP_PORT=9090
#JENKINS_ARGS="--prefix=/jenkins --httpPort=\$HTTP_PORT"

export JENKINS_HOME JENKINS_ARGS JENKINS_URL
mv \$ROOT_DIR/logs/jenkins.log \$ROOT_DIR/logs/jenkins_` date +%d-%m-%Y_%H-%M`.log
nohup java -jar /local/apps/jenkins/jenkins.war  > \$ROOT_DIR/logs/jenkins.log &
EOF

cat <<EOF > stop_jenkins.sh
#!/bin/bash
ps aux |grep jenkins.war |head -n1 |awk '{print \$2}'|xargs kill -9
EOF

chmod 755 /local/apps/jenkins/bin/*
chown ec2-user:ec2-user /local/apps/* -R