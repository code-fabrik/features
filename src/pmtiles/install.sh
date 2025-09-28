#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Activating feature 'pmtiles'"

apt-get update

apt-get install -y wget

wget https://github.com/protomaps/go-pmtiles/releases/download/v1.28.1/go-pmtiles_1.28.1_Linux_x86_64.tar.gz pmtiles.tar.gz

tar -xzf pmtiles.tar.gz -C /usr/local/bin/ && rm pmtiles.tar.gz
