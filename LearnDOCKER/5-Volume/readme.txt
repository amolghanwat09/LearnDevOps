#build image
docker image build -t d5 .

#run app container
docker container run -itd --name d5 --rm --net flaskNet -p 5000:5000 d5
docker exec -it d5 sh
ls -l /     
cd /app/public
ls      ---> check contain inside public dir

#run redis container
docker container run -itd --name redis --rm --net flaskNet -p 6379:6379 redis

#Login in redis container and check /app/public is exist or not
docker exec -it redis bash
ls -l /     ---> you will not see app directory
cd /app/public   ----> you will get error because /app is not exist

#now stop redis container and again run redis container with volume
docker container stop redis
docker container run -itd --name redis --rm --net flaskNet -p 6379:6379 --volumes-from d5 redis

#Login in redis container and create one file in /app/public
docker exec -it redis bash
ls -l /     
cd /app/public
ls
touch test   

#now login in app container and check /app/publish
docker exec -it d5 sh
ls -l /     
cd /app/public
ls      ---> check contain inside public dir, you will find file created in redis container