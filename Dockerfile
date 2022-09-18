FROM ubuntu:jammy AS ubuntu-updated

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt update && \
    apt install -y apt-utils && \
    apt dist-upgrade -y && \
    apt clean



FROM ubuntu-updated AS cpp

RUN \
    apt install -y build-essential cmake git ninja-build gcc \
            clang libc++-dev libc++abi-dev lld liburing-dev && \
    apt clean
