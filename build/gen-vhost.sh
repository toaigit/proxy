#!/bin/bash
#   this generates a vhost file for a new site

. ./vars.env
sed -e s/SITENAME/$SITENAME/g vhost.templ | sed -e s/SHORTNAME/$SHORTNAME/g > files/apache/vhosts/${SHORTNAME}-vhost.conf
sed -e s/DOMAIN/$DOMAIN/g httpd-vhosts.templ > files/apache/vhosts/httpd-vhosts.conf
