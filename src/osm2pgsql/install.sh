#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Activating feature 'osm2pgsql'"

apt-get update

apt-get install -y make cmake g++ libboost-dev \
  libexpat1-dev zlib1g-dev libpotrace-dev \
  libopencv-dev libbz2-dev libpq-dev libproj-dev lua5.3 liblua5.3-dev \
  pandoc nlohmann-json3-dev pyosmium git

git clone https://github.com/osm2pgsql-dev/osm2pgsql.git

cd osm2pgsql

mkdir build && cd build

cmake ..

make

make install
