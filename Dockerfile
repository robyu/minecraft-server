FROM itzg/minecraft-server

MAINTAINER robert yu "robert.yu@gmail.com"

# Environment variables

ENV EULA=TRUE
ENV MODE=creative
ENV MOTD="Chuyu Minecraft server"
ENV DIFFICULTY=normal
ENV LEVEL-TYPE=DEFAULT

# allow all singleplayer cheats
ENV OP-PERMISSION-LEVEL=2
ENV ALLOW-CHEATS=TRUE
ENV PUBLIC=TRUE
ENV SERVER-NAME="Chuyu Server"
ENV OPS=natnatmei,mrjetpacks


EXPOSE 25565