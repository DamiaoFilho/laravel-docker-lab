FROM php:8.4-cli-alpine

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

USER laravel

WORKDIR /var/www/html

ENTRYPOINT [ "composer" ]