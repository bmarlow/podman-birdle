FROM registry.redhat.io/ubi9/httpd-24

USER 0

RUN dnf -y update

RUN dnf clean all

ADD . /var/www/html/

USER 1001

EXPOSE 80

CMD run-httpd 