FROM ubuntu:latest
RUN apt-get update
RUN  apt-get install  nginx -y
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN DEBIAN_FRONTEND=noninteractive apt-get install git -y
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
