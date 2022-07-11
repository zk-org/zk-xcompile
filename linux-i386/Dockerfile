FROM golang:1.18
LABEL os=linux
LABEL arch=i386

ENV GOOS=linux
ENV GOARCH=386
ENV CGO_ENABLED=1
ENV CC=gcc
ENV PATH="/go/bin/${GOOS}_${GOARCH}:${PATH}"
ENV PKG_CONFIG_PATH=/usr/lib/i386-linux-gnu/pkgconfig

RUN dpkg --add-architecture i386 \
 && apt update \
 && apt install -y --no-install-recommends \
        gcc-multilib \
        pkg-config \
        libc6-dev-i386 \
        linux-libc-dev:i386 \
        libicu-dev:i386 \
 && rm -rf /var/lib/apt/lists/*
