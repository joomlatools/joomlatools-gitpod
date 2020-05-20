#!/bin/bash

set -e

echo "* About to set up the gitpod area"

export PATH=/home/gitpod/.composer/vendor/bin/:$PATH

joomla plugin:install joomlatools/console-joomlatools:dev-master

echo "* Create a new Joomla site"

joomla site:create ${APACHE_DOCROOT_IN_REPO} --disable-ssl --mysql-login=root: --www=$GITPOD_REPO_ROOT/

if [[ -e $GITPOD_REPO_ROOT/.gitpod/composer.json ]]; then
  echo "* Installing user defined composer requirements"

  cp $GITPOD_REPO_ROOT/.gitpod/composer.json $GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO}/composer.json

  composer update --working-dir=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO} --ignore-platform-reqs
fi

apachectl start