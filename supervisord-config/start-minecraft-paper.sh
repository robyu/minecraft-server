#!/bin/bash
docker stop mc_paper
docker rm mc_paper

#
# delete server properties so that latest Dockerfile variables take effect
rm -f /home/ryu/minecraft-data/paper-data/server.properties

docker run -v /home/ryu/minecraft-data/paper-data:/data -p 25566:25565 -e VERSION=1.15.2 --name mc_paper minecraft_paper_ryu

