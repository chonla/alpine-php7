FROM alpine:edge
MAINTAINER Chonlasith Jucksriporn <chonla@capabilify.com>

# Update and install basic dependencies
RUN apk update \
    && apk add bash git curl openssl

# Install php7 and minions
RUN apk add php7 php7-mcrypt php7-phar php7-curl php7-pdo php7-json php7-pdo_sqlite sqlite php7-iconv php7-openssl \
    && ln -s $(which php7) /usr/bin/php
