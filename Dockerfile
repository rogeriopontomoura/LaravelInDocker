# 
# Dockerfile é usado para configurar o container para geração da imagem
#

# Cria o container com base na imagem
FROM php:7.3.6-fpm-alpine3.9

# Instala o openssl e bash
RUN apk add --no-cache openssl

# Instala o mysql-client
RUN apk add mysql-client

# Instala o bash
RUN apk add bash

# Instala nodejs e npm
RUN apk add nodejs npm

# Instala extensões
RUN docker-php-ext-install pdo pdo_mysql

# Instala o dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

# Remove a pasta /var/www/html existente na imagem original
# Descomentar linha abaixo para buidar para produção
# RUN rm -rf /var/www/html

# Copia os arquivos da pasta . (local) para dentro da imagem
# Descomentar linha abaixo ao buidar para produção
# COPY . /var/www

# Como o laravel usa a pasta public criamos um link simbolico para interligar a public com a html
RUN ln -s /var/www/public/ /var/www/html

# Baixa e instala o composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Especifica o diretorio de trabalho
WORKDIR /var/www/

# Expôe a porta
EXPOSE 9000

# Especifica o entrypoint que vai segurar o container rodando
#ENTRYPOINT ["php-fpm"]