FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y --no-install-recommends miller \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/mlr"]
