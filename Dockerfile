FROM php:fpm-alpine
RUN apk update && apk add --no-cache \
        freetype-dev \
        git \
        libjpeg-turbo-dev \
        libpng-dev \
        libstdc++ \
        libzip-dev \
        openssh-client \
        openssl-dev \
        unzip \
    && apk add --no-cache --virtual build-dependencies $PHPIZE_DEPS \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) bcmath gd mysqli pcntl pdo_mysql zip \
    && pecl install mongodb \
    && pecl install redis \
    && pecl install swoole \
    && docker-php-ext-enable mongodb opcache redis swoole \
    && apk del build-dependencies \
    && pecl clear-cache \
    && rm -rf /tmp/pear/download/* \
    && curl -O https://getcomposer.org/composer-stable.phar \
    && mv composer-stable.phar /usr/local/bin/composer \
    && chmod +x /usr/local/bin/composer
