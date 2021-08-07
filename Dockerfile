FROM ubuntu:hirsute AS ubuntu-updated

ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt update && \
    apt install -y apt-utils && \
    apt dist-upgrade -y && \
    apt clean



FROM ubuntu-updated AS cpp

RUN \
    apt install -y build-essential cmake git ninja-build \
            gcc clang-12 libc++-12-dev libc++abi-12-dev lld-12 && \
    apt clean
