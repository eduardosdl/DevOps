#!/bin/bash

echo "construindo imagem do app"

docker build -t eduardosdl/app-php:1.0 ./app/.

echo "subindo as imagens"

docker push eduardosdl/app-php:1.0

echo "criando secret"

kubectl apply -f ./secret.yml

echo "criando pvc"

kubectl apply -f ./pvc.yml

echo "criando deployments"

kubectl apply -f ./deployment-mysql.yml --record
kubectl apply -f ./deployment-app.yml --record

echo "concluido"