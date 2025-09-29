#!/bin/bash -i

set -e

if [[ $(uname -m) == "x86_64" ]]; then
    curl -Lo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${VERSION}_Linux_x86_64.tar.gz"
elif [[ $(uname -m) == "aarch64" ]]; then
    curl -Lo lazydocker.tar.gz "https://github.com/jesseduffield/lazydocker/releases/latest/download/lazydocker_${VERSION}_Linux_arm64.tar.gz"
else
    echo "Unsupported architecture"
    exit 1
fi
tar xf lazydocker.tar.gz lazydocker
install lazydocker /usr/local/bin
