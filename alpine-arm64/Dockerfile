FROM --platform=linux/arm64 golang:1.21-alpine
LABEL os=linux
LABEL arch=arm64

ENV GOOS=linux
ENV GOARCH=arm64
ENV CGO_ENABLED=1

RUN apk add --no-cache git gcc musl-dev bash make clang lld

