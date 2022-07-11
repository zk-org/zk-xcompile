FROM golang:1.18
LABEL os=linux
LABEL arch=amd64

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=1
ENV CC=gcc

RUN apt update \
 && apt install -y --no-install-recommends \
        pkg-config \
        libicu-dev:amd64 \
 && rm -rf /var/lib/apt/lists/*
