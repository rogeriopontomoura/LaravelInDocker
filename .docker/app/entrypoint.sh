#!/bin/bash

# Aplica permissões a pasta /var/www
chown -R www-data:www-data /var/www/storage

# Instala as dependências
composer install

# Roda o artisan key-generate
php artisan key:generate

# Roda o artisan migrate
php artisan migrate

# Roda o php-fpm para manter o container up
php-fpm