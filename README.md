## Comando para generar la imagen
➜ docker build -t "api-node:v5" .                



## Comando para crear el contendor con la imagen
➜ docker run -it -p 8080:8080/tcp api-node:v5

