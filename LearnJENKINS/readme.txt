I will be using AWS cloud. In whole Jenkins sessions, ther will be 2 servers. Both server should be in public subnet with internet acces for our exercise.
- One Jenkins server, running on default port (8080)
- Second server, will be application server running with tomcat with default port (8080)

Region - ohio
AMI - ami-03657b56516ab7912

#Open below port on your security group for all. So we can do our exercise witout any issue.
22
80
8080
5000

#use jenkins-userdata.sh in userdata while creating ec2 instance for Jenkins.
#use tomcat-userdata.sh in userdata while creating ec2 instance for Tomcat Application server.

Note - Before starting session, these both servers should be ready for exercise.