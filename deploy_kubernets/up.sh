#!/bin/bash

echo "construindo imagens"

docker build -t eduardosdl/backend-php:1.0 ./backend/.
docker build -t eduardosdl/mysql-php:1.0 ./database/.

echo "subindo as imagens"

docker push eduardosdl/backend-php:1.0
docker push eduardosdl/mysql-php:1.0

echo "criando services"

kubectl apply -f ./service.yml

echo "criando pvc"

kubectl apply -f ./pvc.yml

echo "criando deployments"

kubectl apply -f ./deployment.yml

echo "concluido"