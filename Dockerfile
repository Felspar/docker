FROM ubuntu:noble AS ubuntu-updated


ENV DEBIAN_FRONTEND noninteractive

RUN \
    apt update && \
    apt install -y apt-utils && \
    apt dist-upgrade -y && \
    apt clean


FROM ubuntu-updated AS cpp

RUN \
    apt install -y build-essential cmake git ninja-build gcc \
            clang clang-tools libc++-dev libc++abi-dev lld \
            libssl-dev liburing-dev && \
    apt clean && \
    ln -s /usr/bin/clang-scan-deps-18 /usr/bin/clang-scan-deps
