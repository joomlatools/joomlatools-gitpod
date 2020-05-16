#!/bin/bash

set -e

export PATH=/home/gitpod/.composer/vendor/bin/:$PATH

joomla plugin:install joomlatools/console-joomlatools:dev-master

echo "* Create a new Joomla site"

joomla site:create joomla.${JOOMLA_VERSION} --disable-ssl --mysql-login=root: --www=/workspace/joomlatools-gitpod/ --release=${JOOMLA_VERSION}

if [[ -e /workspace/joomlatools-gitpod/.gitpod/composer.json ]]; then
  echo "* Installing user defined composer requirements"

  cp /workspace/joomlatools-gitpod/.gitpod/composer.json /workspace/joomlatools-gitpod/joomla.${JOOMLA_VERSION}/composer.json

  composer update --working-dir=/workspace/joomlatools-gitpod/joomla.${JOOMLA_VERSION} --ignore-platform-reqs
fi

apachectl start