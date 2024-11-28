# Cross-compiling [`zk`](https://github.com/zk-org/zk) with Docker

Largely inspired by [dh1tw](https://dh1tw.de/2019/12/cross-compiling-golang-cgo-projects/) and [remoteAudio-xcompile](https://github.com/dh1tw/remoteAudio-xcompile).
Images are when changes are pushed to the main branch using Actions.

## How to invoke?

You can compile the `zk` source code directly from the source code directory. As example, for compiling the binary for linux/arm64 you have to execute the following command:

```sh
docker run --rm -v "$PWD":/usr/src/zk -w /usr/src/zk ghcr.io/zk-org/zk-xcompile:linux-arm64 /bin/bash -c 'make'
```

This call is already set in `zk` `Makefile`, e.g. `make dist-linux-amd64`.

More detail is documented here on [Golang's docker hub](https://hub.docker.com/_/golang).

The images are hosted with [ghcr within zk-org](https://github.com/orgs/zk-org/packages/container/zk-xcompile/versions).

## Releasing changes

Clone this repo, make necessary changes, submit a PR. 

### Manual building

```sh
docker buildx build -t ghcr.io/zk-org/zk-xcompile:linux-amd64 ./linux-amd64
```

