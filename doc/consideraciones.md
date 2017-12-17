# Sobre el desarrollo

* La aplicación fue desarrollada con el framework Ruby on Rails, se utilizó como motor de base de datos mysql.
* Para la autenticación de usuarios se utilizó la gema devise.

# Ejecutar aplicación con Docker

## Abrir una consola y ejecutar los siguiente comandos:
* git clone https://github.com/MartinCantarini/app_vulnerable.git
* cd app_vulnerable
* docker build -t app_vulnerable .
* docker-compose build
* docker-compose run app bundle exec rake db:create db:migrate db:seed
* docker-compose up
