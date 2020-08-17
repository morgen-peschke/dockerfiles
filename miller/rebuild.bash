#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"
docker build -t miller-pending .
TAG=$(docker run --rm -i miller-pending --version | cut -d'v' -f2)

docker tag miller-pending morgenpeschke/miller:"$TAG"
docker tag miller-pending morgenpeschke/miller:latest
docker rmi miller-pending
