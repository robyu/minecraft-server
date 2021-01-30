#!/bin/bash
docker stop mc
docker rm mc

#
# delete server properties so that latest Dockerfile variables take effect
rm -f /home/ryu/minecraft-data/forge-data/server.properties

docker run -v /home/ryu/minecraft-data/forge-data:/data -p 25565:25565 -e VERSION=1.15.2 --name mc minecraft_ryu

