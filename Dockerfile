FROM ubuntu:18.04
MAINTAINER gabriel
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
CMD ["nginx", "-g", "daemon off;"]