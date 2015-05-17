FROM busybox:latest

RUN mkdir -p /var/www/html

VOLUME ["/var/www/html"]
