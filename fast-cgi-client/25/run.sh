#!/usr/bin/env bash

cd /var/www

# Install git
apt-get update && apt-get install -y git

# Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '93b54496392c062774670ac18b134c3b3a95e5a5e5c8f1a9f115f203b75bf9a129d5daa8ba6a13e2cc8a1da0806388a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Install hollodotme/fast-cgi-client:^1.0
php composer.phar require hollodotme/fast-cgi-client:^1.0

# Start php-fpm
mkdir -pm 0777 /var/run/php
php-fpm -D --fpm-config=fpm.conf

# Run index.php
php index.php