#!/bin/bash
IMAGENAME=minecraft_forge_ryu
docker rm $IMAGENAME
docker build -t $IMAGENAME --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f Dockerfile-forge .

IMAGENAME=minecraft_paper_ryu
docker rm $IMAGENAME
docker build -t $IMAGENAME --build-arg USER_ID=$(id -u) --build-arg GROUP_ID=$(id -g) -f Dockerfile-paper .


