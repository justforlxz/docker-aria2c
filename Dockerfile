FROM alpine:3.9
MAINTAINER justforlxz,<justforlxz@gmail.com>

# aria2
RUN apk add --no-cache \
                aria2 \
                bash
RUN \
 mkdir /aria2/ && \
 mkdir /aria2/downloads/

WORKDIR /aria2
VOLUME ["/aria2/downloads"]

EXPOSE 6800

COPY entrypoint /usr/local/bin/
COPY aria2.conf /aria2/aria2.conf

RUN mkdir -p /etc/aria2-config/
RUN chmod 777 /etc/aria2-config/

RUN chmod +x /usr/local/bin/*

RUN addgroup -g 1000 docker
RUN adduser -u 1000 -D -G docker docker

USER docker

ENTRYPOINT ["/usr/local/bin/entrypoint"]
