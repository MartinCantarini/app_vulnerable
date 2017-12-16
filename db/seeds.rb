# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(nombre: 'Secador de pelo', descripcion: ' a un precio amigable, es un producto diseñado óptimamente para el cuidado del cabello, que utiliza una TECNOLOGÍA QUE PROTEGE DEL MEDIO AMBIENTE Y DEL PELO a la vez, gracias a su CALOR UNIFORME Y AHORRO DE ENERGÍA.', precio: 750, categoria:'Belleza')
Product.create(nombre: 'Tv LG Smart 49´´', descripcion: 'Smart tv con android tv', precio: 15000, categoria:'Otros')
Product.create(nombre: 'Heladera Noblex no frost c/ freezer', descripcion: 'realizada en color inoxidable y con tratamiento para evitar marcas de dedos, involucra tecnología alemana de última generación y materiales de alta resistencia para lograr el mejor frío, larga vida útil y un diseño innovador.', precio: 16500, categoria:'Electro')
Product.create(nombre: 'Play Station 4', descripcion: 'Consola de videojuegos de 500 Gb', precio: 9000, categoria:'Otros')