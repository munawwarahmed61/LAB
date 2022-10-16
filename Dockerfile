FROM ubuntu:20.04
MAINTAINER "munawwar.ahmed61@gmail.com"
RUN apt update && apt -y upgrade
RUN apt install -y nginx
COPY index.html /var/www/html
COPY index.html /usr/share/nginx.html
EXPOSE 80
CMD ["nginx", "-g", "deamon off;"]
