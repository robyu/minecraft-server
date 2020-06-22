#!/bin/bash
IMAGENAME=minecraft_ryu
docker rm $IMAGENAME

docker build -t $IMAGENAME --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) . 


