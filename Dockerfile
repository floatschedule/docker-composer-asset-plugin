# docker build -t floatapp/composer-asset-plugin:latest .
#
#

FROM composer/composer:alpine

RUN apk update && docker-php-ext-install bcmath && rm -rf /var/cache/apk/*

RUN composer self-update
RUN composer global require "fxp/composer-asset-plugin:^1.3.1"
