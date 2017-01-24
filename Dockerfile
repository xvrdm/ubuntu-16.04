FROM ubuntu:16.04
MAINTAINER Xavier Adam <xvrdm@protonmail.com>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update 
RUN apt-get install -y --no-install-recommends \
        apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends \
        build-essential \
        libssl-dev libssh2-1-dev \
        wget 

ENV DEBIAN_FRONTEND=text
CMD ["echo","hello"]
