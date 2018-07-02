FROM php:7.0-apache

COPY WEBSITE_FOLDER/ /var/www/html/

RUN apt-get update && apt-get install -y libicu-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && chown -R www-data:www-data /var/www/

EXPOSE 80
