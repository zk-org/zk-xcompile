# Cross-compiling [`zk`](https://github.com/zk-org/zk) with Docker

Largely inspired by
[dh1tw](https://dh1tw.de/2019/12/cross-compiling-golang-cgo-projects/) and
[remoteAudio-xcompile](https://github.com/dh1tw/remoteAudio-xcompile).

## How to invoke?

You can compile the `zk` source code directly from the source code directory. As
example, for compiling the binary for linux/arm64 you have to execute the
following command:

```sh
docker run --rm -v "$PWD":/usr/src/zk -w /usr/src/zk tjex/zk-xcompile:linux-arm64 /bin/bash -c './go build'
```

In the case of [`zk`](https://github.com/zk-org/zk) itself, this call is already set in the `Makefile`,
e.g. `make dist-linux-amd64`.

More detail is documented here on
[Golang's docker hub](https://hub.docker.com/_/golang).

## Releasing changes

At time of writing (2024-05-18), Docker is soon to deprecate building with
`docker build`, and is asking users to transition to `docker buildx build`.

Tag signature: `<user>/<docker_hub_repo>:<os>-<arch>`

```sh
docker buildx build -t tjex/zk-xcompile:linux-amd64 ./linux-amd64
docker push tjex/zk-xcompile:linux-amd64

docker buildx build -t tjex/zk-xcompile:linux-arm64 ./linux-arm64
docker push tjex/zk-xcompile:linux-arm64

docker buildx build -t tjex/zk-xcompile:linux-i386 ./linux-i386
docker push tjex/zk-xcompile:linux-i386
```
