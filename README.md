# README

This README would normally document whatever steps are necessary to get the
application up and running.

Una API es definida por wikipedia como La interfaz de programacion de aplicaciones, es un conjunto de subrutinas, funciones y procedimientos
que ofrece cierta biblioteca para ser utilizado por otro software como una capa de abstraccion. 
En mi caso, utilizare JSON para la interaccion del sistema con la interfaz comun. 
El protocolo sera REST(Representational State Transfer).

Las pautas que deben seguir las APIs Restful son: 

* Una base URI como es por ejemplo: http://ejemplo.com/recursos/.

* Un tipo multimedia de Internet para representar los datos , es comunmente JSON y es definido mediante el intercambio de cabeceras.

Metodos HTTP:

* GET: Lee el recurso o recursos definidos por el patron URI
* POST: Crea una nueva entrada en la coleccion de recursos
* PUT: Actualiza una coleccion o un miembro de los recursos
* DELETE: Destruye una coleccion o miembro de los recursos

Metodo de trabajo en GITHUB:

* Se creara una rama por cada "paso" en el proyecto
* Le pondre de nombre chapter(capitulo) a cada rama
* Luego se fusionara a la rama principal que en este caso es "main"
* Utilizare -am para enviar seguimiento de los archivos
* Por ultimo me cambiare desde la rama de trabajo a la rama main para hacer el merge

Arquitectura: 

* Se creo un folder llamado api dentro del folder controller para aislar los controladores
* Se creo otro folder dentro del folder api, llamado v1, por lo que el directory quedo de la siguiente forma app/controllers/api/v1
* Usaremos el nombre api para gestionar los endpoints del api

Formato MIME:

* Rails soporta 35 tipos de archivos multimedia
* En mi caso usare JSON y debo especificarlo en el config/routes.rb

Things you may want to cover:

* Ruby version 3.1.2

* Rails version 7.0.3

* System dependencies

* Configuration

* Database creation sqlite3

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
