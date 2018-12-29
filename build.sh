#!/usr/bin/env bash
set -xe

VERSION=${VERSION:-$(yarn info cypress version | tail -n2 | head -n1)}

build() {
    docker build . -t rdelafuente/cypress:${VERSION} --build-arg VERSION=${VERSION}
    docker push rdelafuente/cypress:${VERSION}
    docker tag rdelafuente/cypress:${VERSION} rdelafuente/cypress:latest
    docker push rdelafuente/cypress:latest
}

#docker pull rdelafuente/cypress:${VERSION} || build
build
