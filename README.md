# Generamos la imagen
➜ docker build -t "api-node:v5" .                



# Creamos el contendor con la imagen
➜ docker run -it -p 8080:8080/tcp api-node:v5

