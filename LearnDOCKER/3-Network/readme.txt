 #Check existing network
docker network ls
--> There are 4 types of network
    1) bridge - This is default one. Help to communicate container with each other on single host.
    2) host - Use HOST actual network
    3) overlay - Help to communicate between multiple docker deamon
    4) macvlan - assign mac id to container and use it for networking.
    5) none - disable networking for container.

#create network
docker network create flaskNet

#run redis container
docker container run -itd --rm --name redis --net flaskNet -p 6379:6379 redis

#build image
docker image build -t d3 .

#run app container
docker container run -itd --rm --name d3 --net flaskNet -p 5000:5000 d3

#check container are running
docker container ls

#check container detail in network inspect
docker network inspect flaskNet

#open http://localhost:5000 or http://IP:5000 in your browser and refresh page 3-4 times

#Note : in app.py we are calling redis url with redis name as DNS name. We can not use IP address as ip always get changed whenever container change.
So we use network. When we use network, container name is mapped to it's IP. To cross verify you can perform below task

#stop d3 container 
docker container d3 stop

#change name in app.py
original line --> app.config['REDIS_URL'] = 'redis://redis:6379/0'
replace with this --> app.config['REDIS_URL'] = 'redis://micky:6379/0'

#run redis container if you have stopped redis container.
docker container run -itd --rm --name redis --net flaskNet -p 6379:6379 redis
Note -> we are running redis container with name redis

#build image
docker image build -t d3_test1 .

#run app container
docker container run -itd --rm --name d3_test1 --net flaskNet -p 5000:5000 d3_test1

#open http://localhost:5000 or http://IP:5000 in your browser and refresh page 3-4 times
You will get error

#Now do not stop app container just stop redis container.
docker container stop redis

#Run redis container with name as micky which we are refering in application
docker container run -itd --rm --name micky --net flaskNet -p 6379:6379 redis

#open http://localhost:5000 or http://IP:5000 in your browser and refresh page 3-4 times