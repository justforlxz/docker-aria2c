FROM alpine:3.9
MAINTAINER justforlxz,<justforlxz@gmail.com>

# aria2
RUN apk add --no-cache \
                aria2 \
                bash
EXPOSE 6800

COPY entrypoint /usr/local/bin/
COPY aria2.conf /aria2/aria2.conf

RUN chmod +x /usr/local/bin/*

RUN addgroup -g 1000 docker
RUN adduser -u 1000 -D -G docker docker

ENTRYPOINT ["/usr/local/bin/entrypoint"]
