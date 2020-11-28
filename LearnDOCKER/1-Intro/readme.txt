#Check type of command
docker --help

-->Docker commands are divided into "management commands" and "commands"

#Check existing images on the host
docker image ls

#Pull image from docker repository
docker image pull python

#Login with docker repository
docker login

#Create tag
docker tag python custom_python

#Push image to docker repository
docker tag python indorenilesh/custom_python
docker image push indorenilesh/custom_python

#check how many containers are running
docker container ls

#Run your first container
docker run -i -t python
--> -i for interactive
--> -t for tty terminal

#Run container in deamon mode
docker run -i -t -d python
docker run -itd python
docker run -id python

#Check how many total container are available on the system
docker container ls -a
--> This will show running as well as stopped containers.

#Run container with --rm flag
docker run -itd --rm python
docker container ls -a

#Run container with name
docker run -itd --rm --name c1 python
docker container ls

#Stop container
docker container stop <container-name/id>
docker container ls -a

#go inside container
docker exec -it <container-name/id> bash

#Do cleanup
docker system prune