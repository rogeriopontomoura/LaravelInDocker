# Curso de Aplicações Modernas com Microserviços - code.education

### Módulo - Devops/Docker

**Primeiro Desafio:**

Configurar um ambiente de desenvolvimento laravel usando docker-compose

**Aplicações:**
* Nginx
* Redis
* Mysql
* PHP-FPM

### Instruções:

Realize o clone do reposotório:
> git clone git@github.com:rogeriopontomoura/LaravelInDocker.git  


Execute a imagem  
> docker-compose up -d  
  
  
  
**Obs:** 

Arquivos docker-compose.yaml.prod e Dockerfile.prod estão configurados para gerar a imagem de produção.
  
  
  
### Atualização - segundo desafio
 
Incluído dockerize para facilitar a configuração do laravel app e nginx.
  
  
Endereço da imagem de produção no Docker Hub: 

https://hub.docker.com/r/rogeriosims/laravelindocker


### Atualização - Continuos Integration

Incluída integração continua com o Cloud Build - GCP 


**Cloud Build** 

* Incluído arquivo "docker-compose.cloudbuild.yaml" com as instruções de dockerize para o app removidas.
* Incluído arquivo "cloudbuild.yaml" com instruções de deploy para o cloudbuild.
* Iniciado gitflow com criação do branch develop
* Configurada integração do gitHub e Cloud Build

  