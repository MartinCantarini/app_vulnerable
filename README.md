# README

## Endpoints para manejo de flags:

* setear flag:
```
/set_flag?id={{id_del_flag}}&content={{contenido_del_flag}}
```

* obtener flag:
```
/get_flag?id={{id}}&token={{token_del_flag}}

```

# Ejecutar aplicación con Docker

## Abrir una consola y ejecutar los siguiente comandos:
* git clone https://github.com/MartinCantarini/app_vulnerable.git
* cd app_vulnerable
* docker build -t app_vulnerable .
* docker-compose build
* docker-compose run app bundle exec rake db:create db:migrate db:seed
* docker-compose up
