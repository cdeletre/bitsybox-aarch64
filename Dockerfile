FROM ubuntu:20.04 as build

# avoid prompt for user input when installing tzdata
ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

RUN TZ=Etc/UTC apt-get update && \
    apt-get install -y \
        git \
        build-essential \
        libsdl2-dev

RUN mkdir /bitsybox-aarch64
WORKDIR /bitsybox-aarch64
