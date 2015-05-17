FROM busybox:latest

RUN mkdir -p /var/lib/mysql

VOLUME ["/var/lib/mysql"]
