FROM docker.io/library/fedora:latest


RUN dnf -y install nginx
ADD . /usr/share/nginx/html/

EXPOSE 80
#CMD "/usr/sbin/httpd" "-D" "FOREGROUND"
CMD "nginx" "-g" "daemon off;"
