FROM debian
RUN apt-get update
RUN apt-get -y install nginx
RUN echo "Eduardo on NGINX" > /var/www/html/index.html

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]