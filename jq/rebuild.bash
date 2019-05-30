#!/bin/bash

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"
docker build -t jq-pending .
TAG=$(docker run --rm -i jq-pending --version | cut -d'-' -f2)

docker tag jq-pending morgenpeschke/jq:"$TAG"
docker tag jq-pending morgenpeschke/jq:latest
docker rmi jq-pending
