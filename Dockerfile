FROM pseiffert/php-cli
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>

ENV COMPOSER_HOME /root/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN pecl install zip && echo "extension=zip.so" >> /usr/local/lib/php.ini

ENTRYPOINT ["composer", "--ansi"]
CMD ["--"]