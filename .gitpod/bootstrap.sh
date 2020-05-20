#!/bin/bash

set -e

#@todo maybe want to secure this more https://wiki.bash-hackers.org/howto/conffile#secure_it
#load up user predefine variables
source $GITPOD_REPO_ROOT/.gitpod/config.sh

echo "* About to set up the gitpod area"

export PATH=/home/gitpod/.composer/vendor/bin/:$PATH

joomla plugin:install joomlatools/console-joomlatools:dev-master

echo "* Create a new Joomla site"

release="--release=latest"
repostring=""

if [ -n "$joomla" ]; then
  release="--release=$joomla"
elif [ -n "$repo" ]; then
  release=""
  repostring="--repo=$repo"
fi;

joomla site:download ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT $release $repostring

joomla site:configure ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT --overwrite --mysql-login=root:

joomla database:install  ${APACHE_DOCROOT_IN_REPO} --www=$GITPOD_REPO_ROOT --drop --mysql-login=root:

if [ -n "$composer_require" ]; then

  echo "* Installing user defined composer requirements"

  composer require $composer_require --working-dir=$GITPOD_REPO_ROOT/${APACHE_DOCROOT_IN_REPO} --ignore-platform-reqs
fi

apachectl start