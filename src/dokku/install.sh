#!/bin/sh
set -e

echo "Activating feature 'dokku'"

git clone https://github.com/dokku/dokku.git $_CONTAINER_USER_HOME/.dokku
mv $_CONTAINER_USER_HOME/.dokku/contrib/dokku_client.sh /usr/local/bin/dokku
