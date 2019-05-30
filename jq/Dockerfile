FROM alpine:3.9.4
RUN wget https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 \
    -O /usr/bin/jq

RUN chmod +x /usr/bin/jq

ENTRYPOINT ["/usr/bin/jq"]
