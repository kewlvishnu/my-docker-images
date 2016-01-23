FROM wordpress:latest

RUN touch /usr/local/etc/php/conf.d/upload-limit.ini && echo "upload_max_filesize = 32M" >> /usr/local/etc/php/conf.d/upload-limit.ini ** echo "post_max_size = 32M" >> /usr/local/etc/php/conf.d/upload-limit.ini

RUN a2enmod rewrite expires headers

VOLUME /var/www/html

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
