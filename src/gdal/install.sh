#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Activating feature 'gdal'"

apt-get update

apt-get install -y gdal-bin
