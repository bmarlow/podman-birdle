FROM docker.io/library/fedora:latest


RUN dnf -y install httpd
ADD . /var/www/html/

EXPOSE 8080
CMD "/usr/sbin/httpd" "-D" "FOREGROUND"
