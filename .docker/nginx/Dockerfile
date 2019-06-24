# 
# Dockerfile é usado para configurar o container para geração da imagem
#

# Cria o container com base na imagem
FROM nginx:1.15.0-alpine

# Remove o arquivo de configuração padrão do nginx
RUN rm /etc/nginx/conf.d/default.conf

# Instala o bash
RUN apk update && apk add bash

# Copia os arquivo de configuração personalizado para dentro da imagem
#COPY ./nginx.conf /etc/nginx/conf.d/

# Instala o dockerize
ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz