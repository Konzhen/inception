FROM debian:bullseye

RUN apt-get update -y
RUN apt-get install nginx -y

RUN mkdir -p /etc/nginx/ssl

RUN apt-get install openssl -y
RUN apt-get install curl -y
    
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key  -subj "/C=FR/ST=IDF/L=Angouleme/O=42/OU=42/CN=jbutte.42.fr/UID=jbutte"

RUN mkdir -p /etc/nginx/ssl
RUN mkdir -p /var/run/nginx

COPY conf/nginx.conf /etc/nginx/nginx.conf

RUN chmod 777 /var/www/html
RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]
