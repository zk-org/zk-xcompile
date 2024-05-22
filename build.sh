#!/usr/bin/env bash

if [[ -z $@ ]]; then
    # if no drs passed, build all
    for dir in $(find . -maxdepth 1 -type d -not -name '.*'); do
        docker buildx build -t zk-org/zk-xcompile:${dir##*/} "${dir}"
    done
else
    # only build images from provided dirs
    for dir in $@; do
        docker buildx build -t zk-org/zk-xcompile:${dir##*/} "${dir}"
    done
fi
