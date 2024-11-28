FROM --platform=linux/amd64 golang:1.23
LABEL os=linux
LABEL arch=amd64

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=1
ENV CC=gcc

RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y --no-install-recommends pkg-config \
&& rm -rf /var/lib/apt/lists/*

