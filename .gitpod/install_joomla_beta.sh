#!/bin/bash

set -e

source $GITPOD_REPO_ROOT/.gitpod/config.sh

release="--release=$joomla_beta"

echo "* Downloading Joomla "

joomla site:download ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT --release=$joomla_beta;

rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/administrator/templates/atum/css; rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/templates/cassiopeia/css; rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/media/; rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/node_modules/; rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/libraries/vendor/;rm -f $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/administrator/cache/autoload_psr4.php; rm -rf $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/installation/template/css;

echo "* Installing dependancies and npm"

composer install --working-dir=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/ --ignore-platform-reqs; npm ci --prefix $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/;

echo "* Installing database"

joomla database:install ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT --mysql-login=root: --sql-dumps=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/installation/sql/mysql/base.sql --sql-dumps=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/installation/sql/mysql/extensions.sql --sql-dumps=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/installation/sql/mysql/supports.sql --sql-dumps=$GITPOD_REPO_ROOT/.gitpod/joomla_beta_users.sql --drop;

echo "* Configuring site"

joomla site:configure ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT --mysql-login=root:;

#Ensure that we can upgrade insecure requests via the apache conf
if [ ! -e "/etc/apache2/mods-enabled/headers.load" ]; then
  ln -s /etc/apache2/mods-available/headers.load /etc/apache2/mods-enabled/headers.load
fi;

apachectl start