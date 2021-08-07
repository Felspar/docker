FROM ubuntu:hirsute
MAINTAINER Kirit Sælensminde

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt update && \
    apt install -y apt-utils && \
    apt dist-upgrade -y && \
    apt install -y build-essential cmake gcc \
            clang-12 libc++-12-dev libc++abi-12-dev lld-12 && \
    apt clean
