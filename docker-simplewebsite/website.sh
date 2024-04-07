#!/bin/bash
# podczas testów wyszło ze docker wykonuje polecenia jak root wiec użycie sudo jest zbedne i powoduje problemy 
# Instalacja NGINX
apt update
apt install -y nginx
apt install wget
# Uruchomienie i włączenie NGINX
 systemctl start nginx
 systemctl enable nginx

# Pobranie i rozpakowanie strony internetowej
 wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip -O /tmp/website.zip
 unzip /tmp/website.zip -d /tmp/website
 cp -r /tmp/website/* /var/www/html/

rm -rf /tmp/website/*
systemctl restart nginx

