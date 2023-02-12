FROM ubuntu
MAINTAINER rijatiana (ssstdmn@gmail.com)
RUN apt update
RUN  apt install  nginx -y
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -Rf /var/www/html/*
RUN DEBIAN_FRONTEND=noninteractive apt install git -y
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
