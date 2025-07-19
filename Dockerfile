# Usa una imagen base de Nginx (servidor web ligero)
FROM nginx:alpine

# Elimina el contenido HTML por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia tu sitio web al directorio que Nginx sirve
COPY . /usr/share/nginx/html

# Expone el puerto 80 para acceder al sitio
EXPOSE 80

# Inicia Nginx
CMD ["nginx", "-g", "daemon off;"]
