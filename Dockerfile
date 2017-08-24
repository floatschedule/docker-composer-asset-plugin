FROM composer/composer:alpine

RUN composer global require "fxp/composer-asset-plugin:^1.2.0"
