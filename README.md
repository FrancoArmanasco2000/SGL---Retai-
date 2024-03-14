# 👨‍💻 SGL para retail con Java ☕

¡Bienvenido a mi proyecto de un sistema de gestion logico desarrollado en Java! Esta aplicación te permite administrar tu retail.

## 🎨 Características

- **Crear sucursales:** Utiliza el botón "Agregar" para completar un formulario y crear tu nueva sucursal, la cual figurará en la tabla correspondiente.
- **Editar sucursales:** Utiliza el botón "Editar" para completar un formulario y poder modificar los datos de la sucursal seleccionada en la tabla.
- **Eliminar sucursales:** Utiliza el botón "Eliminar" para poder eliminar aquella sucursal seleccionada en la tabla.
- **Consultar/Modificar Stock:** Cada sucursal que se presenta en la tabla registrada, podemos seleccionarlas y consultar su stock o modificarlo. Haciendo clic en "Consultar/Modificar stock". (Solo podemos agregar stock de productos que estén registrados, y si un producto es eliminado de la tabla de productos, este mismo se elimina en todas las sucursales que contengan stock de dicho producto).
- **Generar orden:** Cada sucursal puede generar su propia orden sobre un producto que solicite. Seleccionas la sucursal y aprietas en el botón "Generar Orden". Se despliega un menú en el cual puedes ir seleccionando productos del lado derecho y completar una lista del lado izquierdo, aclarando por cada producto cuánto stock solicita.
- **Crear caminos:** Utiliza el botón "Agregar" para completar un formulario y crear una nueva conexión entre sucursales (Solo podemos crear caminos con sucursales registradas anteriormente), la cual figurará en la tabla correspondiente.
- **Editar caminos:** Utiliza el botón "Editar" para completar un formulario y poder modificar los datos de la ruta seleccionada en la tabla.
- **Eliminar caminos:** Utiliza el botón "Eliminar" para poder eliminar aquella ruta seleccionada en la tabla.
- **Crear producto:** Utiliza el botón "Agregar" para completar un formulario y crear un producto, la cual figurará en la tabla correspondiente.
- **Editar producto:** Utiliza el botón "Editar" para completar un formulario y poder modificar los datos del producto seleccionado en la tabla.
- **Eliminar caminos:** Utiliza el botón "Eliminar" para poder eliminar aquel producto seleccionado en la tabla.
- **Apartado ordenes:** El apartado órdenes presenta un grafo con todas las conexiones de las sucursales, el mismo es interactivo. Luego, a la derecha podemos ver una tabla en la cual figuran las órdenes realizadas por sucursales. Seleccionando una orden podemos asignarle una ruta de entrega. Se despliega un menú y vamos a visualizar una lista de aquellas rutas que parten de las sucursales que tienen stock de ese producto solicitado.

## Ejemplos de uso

<h1>CREAR - EDITAR - ELIMINAR SUCURSAL</h1>
https://github.com/FrancoArmanasco2000/SGL_RETAIL/assets/128731027/cf926586-5b1b-423a-8437-74c6ed20a204

GESTIONAR STOCK DE UNA SUCURSAL
https://github.com/FrancoArmanasco2000/SGL_RETAIL/assets/128731027/36b37020-a80e-4a1a-8fde-906b6a49a97b

GENERAR ORDEN DE UNA SUCURSAL
https://github.com/FrancoArmanasco2000/SGL_RETAIL/assets/128731027/4de77473-db91-44f2-9410-a7844c130f01

CONTROLAR MAPA DE SUCURSALES Y ASIGNAR ENVIOS A ORDENES
https://github.com/FrancoArmanasco2000/SGL_RETAIL/assets/128731027/ca6869ff-a89d-4430-9ecd-58d76f86b791

## 🛠️ Tecnologías utilizadas

- **Java:** El projecto es java puro de principio a fin.
- **Hibernate:** Una herramiento para la facilitacion en el manejo de bases de datos.
- **Swing:** Herramienta utilizada para generar la interfaz del software.
- **Maven:** Herramienta utilizada para instalar nuestras dependencias.

## ⚙️ Instalación y Uso

1. Clona este repositorio en tu máquina local utilizando `git clone`.
2. Importa el projecto en tu ide de preferencia. Configura el archivo XML de hibernate para que pueda conectarse con tu base de datos. (Las tablas correspiendtes se encuentran en un archivo llamado backup.sql. Tambien adjuntamos una serie de registros para que puedan probar el software)
3. Inicia la aplicacion.


## 💡 Contribución

¡Las contribuciones son bienvenidas! Si deseas contribuir a este proyecto, sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama para tu funcionalidad (`git checkout -b feature/nueva-funcionalidad`).
3. Realiza tus cambios y haz commit (`git commit -am 'Agrega nueva funcionalidad'`).
4. Sube tus cambios a tu repositorio en GitHub (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request en este repositorio.

## 📧 Contacto

Si tienes alguna pregunta o sugerencia sobre este proyecto, no dudes en contactarme:

- Correo electrónico: programmingarmanasco@gmail.com
- LinkedIn: [Franco Armanasco](https://www.linkedin.com/in/francoarmanasco/)

¡Gracias por tu interés en mi proyecto!


