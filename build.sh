#!/usr/bin/env bash
set -xe
VERSION=${VERSION:-$(yarn info cypress version --json | jq -r .data)}
docker pull rdelafuente/cypress:${VERSION} || echo "building from scratch"

docker build . -t rdelafuente/cypress:${VERSION} --build-arg VERSION=${VERSION}

docker push rdelafuente/cypress:${VERSION}
docker tag rdelafuente/cypress:${VERSION} rdelafuente/cypress:latest
docker push rdelafuente/cypress:latest
