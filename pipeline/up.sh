#! /bin/bash

kubectl apply -f ./deployment-musql.yml --record
kubectl apply -f ./deployment-app.yml --record