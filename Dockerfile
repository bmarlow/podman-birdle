FROM docker.io/library/fedora:latest


RUN dnf -y install nginx
ADD . /usr/share/nginx/html/
RUN chmod -R 777 /var/log/nginx/
RUN sed -i 's/listen  .*/listen 8080;/g' /etc/nginx/nginx.conf
EXPOSE 8080
#CMD "/usr/sbin/httpd" "-D" "FOREGROUND"
#CMD "/bin/sh" "-c" "sed -i 's/listen  .*/listen 8080;/g' /etc/nginx/nginx.conf && exec nginx -g 'daemon off;'"
CMD "nginx" "-g" "daemon off;"
