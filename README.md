# Cross-compiling [`zk`](https://github.com/mickael-menu/zk) with Docker

Largely inspired by [dh1tw](https://dh1tw.de/2019/12/cross-compiling-golang-cgo-projects/) and [remoteAudio-xcompile](https://github.com/dh1tw/remoteAudio-xcompile).

## How to invoke?

You can compile the `zk` source code directly from the source code directory. As example, for compiling the binary for linux/arm64 you have to execute the following command:

```sh
docker run --rm -v "$PWD":/usr/src/zk -w /usr/src/zk mickaelmenu/zk-xcompile:linux-arm64 /bin/bash -c './go build'
```

## Releasing changes

```sh
docker build -t mickaelmenu/zk-xcompile:linux-amd64 ./linux-amd64
docker push mickaelmenu/zk-xcompile:linux-amd64

docker build -t mickaelmenu/zk-xcompile:linux-arm64 ./linux-arm64
docker push mickaelmenu/zk-xcompile:linux-arm64

docker build -t mickaelmenu/zk-xcompile:linux-i386 ./linux-i386
docker push mickaelmenu/zk-xcompile:linux-i386
```
