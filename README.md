# Cross-compiling [`zk`](https://github.com/zk-org/zk) with Docker

Largely inspired by [dh1tw](https://dh1tw.de/2019/12/cross-compiling-golang-cgo-projects/) and [remoteAudio-xcompile](https://github.com/dh1tw/remoteAudio-xcompile).

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
After PR is confirmed, proceed with building and pushing.

### Building

```sh
docker buildx build -t ghcr.io/zk-org/zk-xcompile:linux-amd64 ./linux-amd64
docker push ghcr.io/zk-org/zk-xcompile:linux-amd64
```

or via the `build` script

```sh
./build # builds all images
./build ./linux-amd64 ./linux-arm64 # build desired images only
```

### Pushing

Logout of docker if you're currently logged in: `docker logout` or via Docker Desktop.

Then login to `ghcr.io` with your personal access token. Only members of `zk-org` can push. Docs are [here](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-with-a-personal-access-token-classic).

For example:

```sh
echo $ZK-TOKEN | docker login ghcr.io -u USERNAME --password-stdin
```

Then you can push to our container registry.

```sh
docker push ghcr.io/zk-org/zk-xcompile:linux-amd64
```

or via the push script

```sh
./push # pushes all images to zk-org ghcr
./push ./linux-amd64 ./alpine-amd64 # push desired images only

```
