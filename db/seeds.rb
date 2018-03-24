# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Departamento.create(nombre: "Itapúa")
Departamento.create(nombre: "Central")
Departamento.create(nombre: "Misiones")
Departamento.create(nombre: "Alto Paraná")

Distrito.create(nombre: "Encarnación", departamento_id: "1")
Distrito.create(nombre: "Cambyreta", departamento_id: "1")
Distrito.create(nombre: "San Isidro", departamento_id: "1")
Distrito.create(nombre: "Asunción", departamento_id: "2")
Distrito.create(nombre: "Ayolas", departamento_id: "3")
Distrito.create(nombre: "Santiago", departamento_id: "3")
Distrito.create(nombre: "San Juan", departamento_id: "3")
Distrito.create(nombre: "San Ignacio", departamento_id: "3")
Distrito.create(nombre: "Ciudad del Este", departamento_id: "4")

Servicio.create(nombre: "Venta")
Servicio.create(nombre: "Alquiler")
Servicio.create(nombre: "Alojamiento")

TipoInmueble.create(nombre: "Terrenos")
TipoInmueble.create(nombre: "Casas")
TipoInmueble.create(nombre: "Departamentos")
TipoInmueble.create(nombre: "Locales Comerciales")

Inmueble.create(nombre: "Alquiler en zona centro", direccion: "Constitución Nacional N° 232", codigo: "A14", servicio_id: "2", distrito_id: "1", tipo_inmueble_id: "3")
Inmueble.create(nombre: "Alquiler en el centro", direccion: "Avda. Gral Artigas N° 345", codigo: "A17", servicio_id: "2", distrito_id: "1", tipo_inmueble_id: "3")
Inmueble.create(nombre: "Único lugar en el centro", direccion: "Calle 14 de Mayo c/ Mcal Estigarribia N° 676", codigo: "A11", servicio_id: "2", distrito_id: "1", tipo_inmueble_id: "3")
Inmueble.create(nombre: "Zona Centrica de Encarnación", direccion: "Avda. Irrazabal e/ Gral. Burgués N° 345", codigo: "A89", servicio_id: "2", distrito_id: "1", tipo_inmueble_id: "3")
Inmueble.create(nombre: "Terreno cerca del río", direccion: "Barrio San Isidro Avda. Costanera", codigo: "T15", servicio_id: "1", distrito_id: "3", tipo_inmueble_id: "1")
Inmueble.create(nombre: "Casa de 3 habitaciones", direccion: "Avda. Florida 234", codigo: "K45", servicio_id: "1", distrito_id: "4", tipo_inmueble_id: "2")
Inmueble.create(nombre: "Local en Circuito Comercial", direccion: "Independecia Nacional N° 678", codigo: "L45", servicio_id: "2", distrito_id: "1", tipo_inmueble_id: "4")

