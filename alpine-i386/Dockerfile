FROM --platform=linux/386 golang:1.23-alpine
LABEL os=linux
LABEL arch=386

ENV GOOS=linux
ENV GOARCH=386
ENV CGO_ENABLED=1

RUN apk add --no-cache git gcc musl-dev bash make clang lld

