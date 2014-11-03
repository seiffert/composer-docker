FROM php:5.6.2-cli
MAINTAINER Paul Seiffert <paul.seiffert@gmail.com>

ENV COMPOSER_HOME /root/composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN pecl install zip && echo "extension=zip.so" >> /usr/local/lib/php.ini
RUN echo "date.timezone = \"Europe/Berlin\"" >> /usr/local/lib/php.ini
RUN echo "memory_limit = 512M" >> /usr/local/lib/php.ini

WORKDIR /opt
ENTRYPOINT ["composer", "--ansi"]