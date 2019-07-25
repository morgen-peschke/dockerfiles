#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"
docker build -t pyexpander3-pending .
TAG=$(docker run --rm -i pyexpander3-pending --version | cut -d' ' -f2)

docker tag pyexpander3-pending morgenpeschke/pyexpander3:"$TAG"
docker tag pyexpander3-pending morgenpeschke/pyexpander3:latest
docker rmi pyexpander3-pending
