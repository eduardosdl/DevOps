#!/bin/bash

echo "Apagando diretórios ..."

rm -Rf /publica
rm -Rf /adm
rm -Rf /ven
rm -Rf /sec

echo "Apagando usuários ..."

userdel -r carlos
userdel -r maria
userdel -r joao

userdel - r debora
userdel -r sebastiana
userdel -r roberto

userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Apagando grupos ..."

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Limpeza concluida !"
