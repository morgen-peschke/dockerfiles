FROM alpine:latest
RUN wget https://github.com/johnkerl/miller/releases/download/v5.8.0/mlr.linux.x86_64 -O /mlr && \
    chmod 700 /mlr
ENTRYPOINT ["/mlr"]
