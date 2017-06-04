FROM php:5-apache

MAINTAINER dusheng126@gmail.com

COPY html /var/www/html
COPY dav_svn.passwd /etc/apache2/
COPY dav_svn.authz /etc/apache2/
COPY sources.list /etc/apt/

RUN apt-get update
RUN apt-get install -y subversion libapache2-svn
RUN apt-get clean && apt-get autoremove
RUN mkdir /svndata

COPY dav_svn.conf /etc/apache2/mods-available/dav_svn.conf
COPY data /var/www/html/data
