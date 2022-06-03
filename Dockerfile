FROM docker.io/library/fedora:latest


RUN dnf -y install nginx
ADD . /usr/share/nginx/html/
RUN chmod -R 777 /var/log/nginx/

EXPOSE 8080
#CMD "/usr/sbin/httpd" "-D" "FOREGROUND"
CMD "/bin/sh" "-c" "sed -i 's/listen  .*/listen 8080;/g' /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"
#CMD "nginx" "-g" "daemon off;"
