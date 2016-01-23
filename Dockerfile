FROM wordpress:latest

RUN a2enmod rewrite expires headers

ADD uploads.ini /usr/local/etc/php/conf.d/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
