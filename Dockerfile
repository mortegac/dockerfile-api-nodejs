################################################
# Dockerfile para configurar aplicacion node.js
################################################

# Establece la imagen base
FROM node:10.16.3-alpine as node

# Metadata
LABEL "appNode" = "App de test usando Nodejs - Mysql - Redis"
LABEL maintener = "Manuel Ortega Carcamo"
LABEL version = "v0.0.1"

ENV NODE_ENV=development


# Crear directorio de trabajo
RUN mkdir -p /opt/app
# Se estable el directorio de trabajo
WORKDIR "/opt/app"

COPY ./api/package.json .

RUN npm install --quiet

# Copia la app
COPY . .


# Inicia a app al iniciar el contenedor  
CMD node api/app.js

EXPOSE 80/tcp