# Dockerfile
FROM mysql:latest

# Entorno de configuración de MySQL
ENV MYSQL_ROOT_PASSWORD=yourpassword
ENV MYSQL_DATABASE=ticket_system
ENV MYSQL_USER=youruser
ENV MYSQL_PASSWORD=yourpassword

# Copiar el script de inicialización
COPY ./init.sql /docker-entrypoint-initdb.d/
