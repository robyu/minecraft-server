# Minecraft Docker 

based on https://github.com/itzg/docker-minecraft-server

To build an image 'mcserver':
> docker build -t mcserver .

To run and listen to port 25565:
> docker run -d -p 25565:25565 -name mc mcserver

To stop, restart:
> docker stop mc
> docker start mc

To look at logs:
> docker logs -f mc

For more detail, see README.md at https://github.com/itzg/docker-minecraft-server/blob/master/README.md 
