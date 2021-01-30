#!/bin/bash
docker stop mc_forge
docker rm mc_forge

#
# delete server properties so that latest Dockerfile variables take effect
rm -f /home/ryu/minecraft-data/forge-data/server.properties

docker run -v /home/ryu/minecraft-data/forge-data:/data -p 25565:25565 -e VERSION=1.15.2 --name mc_forge minecraft_forge_ryu

