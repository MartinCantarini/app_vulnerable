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
* docker-compose build
* docker-compose run app rake db:create 
* docker-compose run app rake db:migrate db:seed
* docker-compose run app rake db:seed
* docker-compose up


* Si ocurre un error al tratar de crear la base de datos, volver a intentar. 