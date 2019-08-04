FROM ubuntu:18.04

LABEL maintainer="Tomer Klein <tomer.klein@gmail.com>"

RUN apt update &&  apt upgrade --yes

RUN echo "postfix postfix/mailname string your.hostname.com" | debconf-set-selections

RUN echo "postfix postfix/main_mailer_type string 'Internet Site'" | debconf-set-selections

RUN apt-get install smokeping --yes

VOLUME /etc/smokeping/config.d

EXPOSE 80
