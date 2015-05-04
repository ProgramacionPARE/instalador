# Instalador del sistema Incoming Pare

Este repositorio cuenta con los archvios necesarios para instalar la aplicacion incoming pare.
- En la carpeta lib, se encuentran las libreria necesarias para su funcionamiento.
- En la carpeta reportes, se encuentran los archivos Japer, para generar reportes.
- La carperta cortes, es una carperta vacia, donde se guardaran en pdf, los cortes diarios.
- Los archivos pare.sql y paredatos.sql contienen la informacion para inicializar las bases de datos.
- El archivo PARE.jar es el ejecutable.

## Como subir un cambio.

- Despues de compilar la aplicacion de escritorio se generara de nuevo el archivo PARE.jar, con los nuevos cambios.
- Desde la consola navegamos a  escritorio/dist/
- Dentro de dist vamos a agregar el nuevo cambio con
```sh
git add PARE.jar
```
- Realizamos el commit
```sh
git commit -m "Descripcion del cambio"
```
- Subimos el archivo al repositorio
```sh
git push origin master
```
