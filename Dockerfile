# ----------------------------------
# NANO Test Dockerfile
# Environment: Alpine/Java
# Minimum Panel Version: 1.11.3
# ----------------------------------
FROM openjdk:8-jdk-alpine

MAINTAINER nanonator102, <nanonator102#1542>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
  && adduser --disabled-password --home /home/container container

USER container
ENV USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
