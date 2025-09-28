#!/bin/sh
set -e

export DEBIAN_FRONTEND=noninteractive

echo "Activating feature 'gdal'"

apt-get update

wget -O /tmp/libgdal-dev.deb http://ftp.ch.debian.org/debian/pool/main/g/gdal/libgdal-dev_3.6.2+dfsg-1+b2_amd64.deb
wget -O /tmp/gdal-bin.deb http://ftp.ch.debian.org/debian/pool/main/g/gdal/gdal-bin_3.6.2+dfsg-1+b2_amd64.deb

apt update && apt install -y /tmp/libgdal-dev.deb /tmp/gdal-bin.deb

rm /tmp/libgdal-dev.deb
rm /tmp/gdal-bin.deb
