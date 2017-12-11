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

## Explicación de la vulnerabilidad

* Crearse una cuenta en el sistema, para esto es necesario ingresar al link 'Registrarse' que se encuentra en la esquina superior derecha, una vez que ingresa se le solicitará un email y una contraseña.
* Una vez que inicio sesión en el sistema, debe ingresar al link editar perfil en la esquina superior derecha.
* Inpeccionar la página y setearle al campo oculto ```rol``` el valor ```admin``` , completar la información necesaria en el formulario y presionar continuar.
