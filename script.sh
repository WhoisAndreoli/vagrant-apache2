#!/bin/bash

echo "atualizando servidor............"
sudo apt-get update
sudo apt-get upgrade -y

echo "instalando apache2 e unzip............."
sudo apt-get install apache2 unzip -y


echo "baixando e copiando os arquivos da aplicação..............."
cd /tmp
curl -L -O https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
