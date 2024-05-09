FROM golang:1.21
LABEL os=linux
LABEL arch=amd64

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=1
ENV CC=gcc

RUN apt update \
 && apt install -y --no-install-recommends \
        pkg-config \
 && rm -rf /var/lib/apt/lists/*
