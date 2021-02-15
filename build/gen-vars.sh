#!/bin/bash
#
. ./vars.env

#  generate your first default vhost (www).
sed -e s/DOMAIN/$DOMAIN/g httpd-vhosts.templ > files/apache/vhosts/httpd-vhosts.conf

#  generate your docker compose yml file for startup and shutdown script.
sed -e s:DATADIR:$DATADIR:g proxy-compose.templ | sed -e s/DOCKER/$DOCKER/g | sed -e s/CONTAINER/$CONTAINER/g > ../proxy-compose.yml
