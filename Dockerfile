FROM ubuntu20.04:latest

RUN cat /etc/resolv.conf

RUN echo  " "

#install
RUN sudo apt install httpd -y

# configure
RUN echo "Jenkins Docker Build and Publish " > /var/www/html/index.html



CMD ["sh", "-c", "tail -f /dev/null"]

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


EXPOSE 80
