# docker build -t floatapp/composer-asset-plugin:latest .
#
# we probalby want to just use the php image created for the web
# project, as appropriate, yii or yii 2
#
# also should see if we can do without the composer-asset-plugin since
# we aren't using php to manage other assets
#

FROM composer/composer:alpine

RUN apk update && docker-php-ext-install bcmath

RUN composer self-update
RUN composer global require "fxp/composer-asset-plugin:^1.3.1"
