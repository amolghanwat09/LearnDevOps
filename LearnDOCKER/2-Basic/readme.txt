#build image
docker image build -t d2 .

#Running container
docker container run -itd --name d2 --rm -p 5000:5000 d2

#open http://localhost:5000 or http://ip:5000 in your browser