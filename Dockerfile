FROM amazonlinux
RUN yum uodate -y
RUN yum install httpd -y
COPY ./index.html /var/www/html
CMD ["httpd","-D","FOREGROUND"]
EXPOSE 80
