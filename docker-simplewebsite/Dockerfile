# Uzycie ubuntu
FROM ubuntu:latest

# aktualizacja pakietu , instacja potrzenych rzeczy 
RUN apt-get update && apt-get install -y nginx unzip wget

# kopiujemy skrypt do kontenera
COPY website.sh /website.sh

# Nadajemy uprawnienia do skryptu 
RUN chmod +x /website.sh

# Uruchomamiamy 
RUN /website.sh

# Ustawienie domyślnego portu na 80
EXPOSE 80

# Uruchomamianie NGINX w tle
CMD ["nginx", "-g", "daemon off;"]
