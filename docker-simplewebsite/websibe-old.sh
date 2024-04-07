#!/bin/bash

# Instalacja NGINX
sudo apt update
sudo apt install -y nginx

# Uruchomienie i włączenie NGINX
sudo systemctl start nginx
sudo systemctl enable nginx

# Pobranie i rozpakowanie strony internetowej
wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip -O /tmp/website.zip
sudo unzip /tmp/website.zip -d /tmp/website
sudo cp -r /tmp/website/* /var/www/html/

rm -rf /tmp/website/*
sudo systemctl restart nginx

# Ustawianie bezpieczeństwa maszyny
sudo apt install -y ufw
sudo ufw enable

# Otwieranie portów dla HTTP i HTTPS
sudo ufw allow 'Nginx Full'

# Ograniczenie liczby połączeń przychodzących z jednego adresu IP
# Możesz dodać reguły UFW dla określonych adresów IP, jeśli potrzebujesz

sudo ufw reload
