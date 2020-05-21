FROM gitpod/workspace-mysql:latest

ENV APACHE_DOCROOT_IN_REPO="joomla"
ENV APACHE_RUN_USER="gitpod"
ENV APACHE_RUN_GROUP="gitpod"

USER root

# Configure Apache2
COPY apache.conf /etc/apache2/apache2.conf

# Configure PHP
COPY  phplimits.ini /etc/php/7.4/apache2/conf.d/phplimits.ini

# Install extra PHP extensions
RUN apt-get update \
 && apt-get install php-ldap php-xml libxml2-dev build-essential php-yaml -y

# Configure MySQL's sql-mode
RUN echo -e "\nsql-mode=\"NO_ENGINE_SUBSTITUTION\"" >> /etc/mysql/mysql.conf.d/mysqld.cnf

RUN chown -R gitpod:gitpod /var/www/

# Fix file permissions
RUN chown -R gitpod:gitpod /var/www/
RUN chown -R gitpod:gitpod /etc/apache2/
RUN chown -R gitpod:gitpod /etc/mysql/
RUN chown -R gitpod:gitpod 	/etc/php/7.4

#Ensure that we can upgrade insecure requests via the apache conf
ln -s /etc/apache2/mods-enabled/mod_headers.load /etc/apache2/mods-available/mod_headers.load

USER gitpod

# Install joomlatools/console
RUN composer global require joomlatools/console --no-interaction

# Make sure PATH is always updated with PATH to Composer package binaries
RUN echo 'export PATH=/home/gitpod/.composer/vendor/bin/:$PATH' >> ~/.bashrc

RUN echo "hello world"