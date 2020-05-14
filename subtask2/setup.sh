#!/bin/bash
#build the image
sudo docker build -t ubuntu:2.0 .

#run the container
x=$(echo "docker images|head -2|tail-2|awk '{print $3;}'")
docker -it -d run $x /bin/bash

#run the alias.sh inside the container
y=$(echo "docker ps|grep $x|awk '{print $1}'")
docker exec -it $y sh aliases.sh
