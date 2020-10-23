#!/bin/bash
ROOT_DIR=/local/apps/jenkins
JENKINS_HOME=/local/apps/jenkins/home
JENKINS_URL=/local/apps/jenkins

for i in $ROOT_DIR $JENKINS_HOME $ROOT_DIR/logs
do
  if [ ! -d  $i ]
  then
    mkdir $i
  fi
done

#If you are using port other than 8080
#HTTP_PORT=9090
#JENKINS_ARGS="--prefix=/jenkins --httpPort=$HTTP_PORT"

export JENKINS_HOME JENKINS_ARGS JENKINS_URL
mv $ROOT_DIR/logs/jenkins.log $ROOT_DIR/logs/jenkins_` date +%d-%m-%Y_%H-%M`.log
nohup java -jar /local/apps/jenkins/jenkins.war  > $ROOT_DIR/logs/jenkins.log &