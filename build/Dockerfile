FROM httpd
MAINTAINER Toai Vo <toaivo@stanford.edu>

ARG USERUID
ARG GROUPID

RUN usermod -u ${USERUID} www-data && \
    groupmod -g ${GROUPID} www-data && \
    mkdir /usr/local/apache2/certs

COPY files/certs/  /usr/local/apache2/certs
COPY files/apache/conf/httpd.conf /usr/local/apache2/conf
COPY files/apache/vhosts/ /usr/local/apache2/conf/extra
