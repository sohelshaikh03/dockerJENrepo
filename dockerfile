FROM ubuntu:latest
RUN apt-get update
RUN apt install apache2 -y
WORKDIR  /var/www/html/
RUN touch index.html
RUN echo "my nameis a SOHEL Shaikh" > index.html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
