#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Activating feature 'tippecanoe'"

apt-get update

apt-get install -y build-essential libsqlite3-dev zlib1g-dev git

git clone https://github.com/felt/tippecanoe.git

cd tippecanoe && make -j && make install

rm -rf tippecanoe
