# We need a golang build environment first

FROM fedora:latest


RUN dnf -y install httpd
ADD . /var/www/html/

EXPOSE 80
CMD "/usr/sbin/httpd" "-D" "FOREGROUND"
 
