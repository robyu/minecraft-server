#FROM itzg/minecraft-server
FROM itzg/minecraft-server:adopt13
#                          ^^^^^^^
#                        use java version 13 latest update
#                        using java 8 seems to crash ubuntu
#

MAINTAINER robert yu "robert.yu@gmail.com"

#
# match user id and group id with host
#
# see https://vsupalov.com/docker-shared-permissions/
ARG USER_ID
ARG GROUP_ID

# dont run as user 1000
ENV UID=$USER_ID
ENV GID=$GROUP_ID

# server config
#######################\
# need "fml.queryResults:confirm" to problem after removing mods
# see https://github.com/itzg/docker-minecraft-server/blob/master/README.md
ENV JVM_DD_OPTS=fml.queryResult:confirm  
ENV TYPE=FORGE
ENV EULA=TRUE
ENV MODE=creative
ENV MOTD="Chuyu Minecraft Forge"
ENV DIFFICULTY=normal
ENV LEVEL-TYPE=DEFAULT

# allow all singleplayer cheats
ENV OP-PERMISSION-LEVEL=2
ENV ALLOW-CHEATS=TRUE
ENV PUBLIC=TRUE
ENV SERVER-NAME="Chuyu Server"
ENV OPS=natnatmei,mrjetpacks,2kyu


EXPOSE 25565