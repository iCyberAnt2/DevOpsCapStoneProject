FROM ubuntu  
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update -y
RUN apt-get install php -y
RUN apt-get install apache2 -y

RUN echo 'Hello Simplilearn This is a Web Server inside a Docker Conainer :)' > /var/www/html/index.html 
EXPOSE 80
CMD ["apache2ctl" "-D" "FOREGROUND"]    
