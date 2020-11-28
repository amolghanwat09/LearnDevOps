#check existing volume
docker volume ls

#create new volume
docker volume create redisdata

#run redis container with volume
docker container run -itd --rm --name redis --net flaskNet -p 6379:6379 -v redisdata:/data redis

#build app image and run app container
docker image build -t d4 .
docker container run -itd --rm --name d4 --net flaskNet -p 5000:5000 d4

#Open http://localhost:5000 and refresh page 4-5 times....and remember this number
#now stop redis and d4 container.... and again start it
docker container stop redis
docker container stop d4
docker container run -itd --rm --name redis --net flaskNet -p 6379:6379 -v redisdata:/data redis
docker container run -itd --rm --name d4 --net flaskNet -p 5000:5000 d4

#Open http://localhost:5000 ....you will find number will get continued from where it was left last time.

#Now login in redis command line and manually edit data and check visitor number on page.
docker exec -it redis redis-cli
KEYS *
get web2_counter
set web2_counter 1100
get web2_counter

#Now again do refresh the page and check visitor number it should 1101

#To get more detail about volume
docker volume inspect redisdata

#delete existing volume (stop container who are using volume)
docker container stop redis
docker container stop d4
docker volume rm redisdata