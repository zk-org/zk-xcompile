FROM --platform=linux/amd64 golang:1.21-alpine
LABEL os=linux
LABEL arch=amd64

ENV GOOS=linux
ENV GOARCH=amd64
ENV CGO_ENABLED=1

RUN apk add --no-cache gcc musl-dev bash make clang lld

