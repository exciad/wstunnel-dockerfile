FROM alpine:latest

RUN apk add --no-cache wget && \
    wget https://github.com/erebe/wstunnel/releases/download/2.0/wstunnel_linux_x64 -O /usr/local/bin/wstunnel && \
    chmod +x /usr/local/bin/wstunnel

WORKDIR /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/wstunnel"]
