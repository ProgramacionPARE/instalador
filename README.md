# Instalador del sistema Incoming Pare

Este repositorio cuenta con los archvios necesarios para instalar la aplicacion incoming pare.
- En la carpeta lib, se encuentran las libreria necesarias para su funcionamiento.
- En la carpeta reportes, se encuentran los archivos Japer, para generar reportes.
- La carperta cortes, es una carperta vacia, donde se guardaran en pdf, los cortes diarios.
- Los archivos pare.sql y paredatos.sql contienen la informacion para inicializar las bases de datos.
- El archivo PARE.jar es el ejecutable.

## Como subir un cambio.

1 Despues de compilar la aplicacion de escritorio se generara de nuevo el archivo PARE.jar, con los nuevos cambios.
2 Desde la consola navegamos a  escritorio/dist/
3 Dentro de dist vamos a agregar el nuevo cambio con
		git add PARE.jar
4 Realizamos el commit
		git commit -m "Descripcion del cambio"
5 Subimos el archivo al repositorio
		git push origin master

