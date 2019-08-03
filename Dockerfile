FROM ubuntu:18.04
LABEL maintainer="Tomer Klein <tomer.klein@gmail.com>"

RUN apt update &&  apt upgrade --yes
RUN debconf-set-selections <<< "postfix postfix/mailname string your.hostname.com"
RUN debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
RUN apt-get install -y postfix -y
RUN apt-get install smokeping --yes
VOLUME /etc/smokeping/config.d

EXPOSE 80
