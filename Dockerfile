FROM alpine:3.6

MAINTAINER antoine.cardon@algolia.com

RUN apk update \
    && apk add squid=3.5.23-r2 \
    && rm -rf /var/cache/apk/*

EXPOSE 3128

ENTRYPOINT ["/usr/sbin/squid"]
CMD ["-f", "/etc/squid3/squid.conf", "-NYCd", "1"]
