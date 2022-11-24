#!/bin/bash

echo "Iniciando script"

echo "Atualizando servidor"

# para debian e derivados
sudo apt-get update -y
sudo apt-get upgrade -y

# para arch e derivados
# sudo pacman -Syu

# para fedora, redhat e derivados
# sudo dnf distro-sync

echo "Installar apache"

# para debian e derivados
sudo apt-get install apache2 unzip -y

# para arch e derivados
# sudo pacman -S apache unzip

# para fedora, redhat e derivados
# sudo dnf httpd unzip

echo "Baixando arquivos do site"

cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos"

unzip ./main.zip

echo "Copiando arquivos para a pasta de compatilhamento"

cd linux-site-dio-main
cp -R ./* /var/www/html/

clear
echo "Server rodando..."
