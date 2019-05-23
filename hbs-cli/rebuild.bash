#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"
docker build -t hbs-cli-pending .
TAG=$(docker run --rm -i hbs-cli-pending --version 2>&1)

docker tag hbs-cli-pending morgenpeschke/hbs-cli:"$TAG"
docker tag hbs-cli-pending morgenpeschke/hbs-cli:latest
docker rmi hbs-cli-pending
