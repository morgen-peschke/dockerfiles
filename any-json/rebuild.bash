#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"

docker build -t any-json-pending .
TAG=$(docker run --rm -i any-json-pending --version 2>&1 </dev/null | cut -d' ' -f3)

docker tag any-json-pending morgenpeschke/any-json:"$TAG"
docker tag any-json-pending morgenpeschke/any-json:latest
docker rmi any-json-pending
