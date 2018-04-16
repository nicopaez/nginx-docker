Imagen del frontend
===================

Este repositorio contiene la estructura base para generar una imagen docker con Nginx a partir del la imagen curada por RedHat que estña disponible [aquí](https://access.redhat.com/containers/?tab=overview#/registry.access.redhat.com/rhscl/nginx-112-rhel7)

Para builder esta imagen es necesario usar la herramienta [Source-To-Image](https://github.com/openshift/source-to-image)

Forma de uso
------------

1. Clonar este repositorio
2. Ubicar los archivos de la aplicación en la raíz del repositorio
3. Ejecutar el comando s2i para buildear la imagen

````
s2i build . registry.access.redhat.com/rhscl/nginx-112-rhel7 frontend
````

4. Levantar la imagen generada con el siguiente comando:

`````
docker run -p8080:8080 -eBACKEND_PROTOCOL="http" -eBACKEND_HOSTNAME="hostname-of-backend" --mount type=bind,source=/path/to/folder/with/config/files,target=/opt/app-root/src/config frontend
`````