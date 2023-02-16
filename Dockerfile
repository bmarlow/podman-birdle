FROM registry.redhat.io/ubi9/httpd-24

USER 0

RUN dnf -y update

RUN dnf clean all

ADD . /var/www/html/

RUN chgrp -R 0 /opt/app-root
RUN chmod -R g=u /opt/app-root

RUN chgrp -R 0 /var/log
RUN chmod -R g=u /var/log

USER 1001

EXPOSE 80

CMD run-httpd 