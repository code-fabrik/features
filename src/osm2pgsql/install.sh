#!/bin/sh
set -e

echo "Activating feature 'osm2pgsql'"

sudo apt-get install make cmake g++ libboost-dev \
  libexpat1-dev zlib1g-dev libpotrace-dev \
  libopencv-dev libbz2-dev libpq-dev libproj-dev lua5.3 liblua5.3-dev \
  pandoc nlohmann-json3-dev pyosmium

git clone https://github.com/osm2pgsql-dev/osm2pgsql.git

cd osm2pgsql

mkdir build && cd build

cmake ..

make

make install
