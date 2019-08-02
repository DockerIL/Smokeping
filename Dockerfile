FROM ubuntu:18.04
LABEL maintainer="Tomer Klein <tomer.klein@gmail.com>"

RUN apt update &&  apt upgrade --yes
RUN apt-get install smokeping --yes

VOLUME /etc/smokeping/config.d

EXPOSE 80
