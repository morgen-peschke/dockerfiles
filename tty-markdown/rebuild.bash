#!/bin/bash -Eeuo pipefail

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

cd "$DIR"
docker build -t tty-markdown-pending .
TAG=$(docker run --rm -i --entrypoint sh tty-markdown-pending version.sh 2>&1)

docker tag tty-markdown-pending morgenpeschke/tty-markdown:"$TAG"
docker tag tty-markdown-pending morgenpeschke/tty-markdown:latest
docker rmi tty-markdown-pending
