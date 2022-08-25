#!/bin/bash

cd /live-build

# copy custom files in
cp -r /src/config .

# setup cache... err... caching
mkdir -p cache/
ln -s /src/cache/packages.chroot cache/packages.chroot
ln -s /src/cache/packages.bootstrap cache/packages.bootstrap

# ln -s /src/cache/apt-archives chroot/var/cache/apt/archives
# mkdir -p chroot/var/cache/apt/

lb config
lb build && echo "Copying .iso to /src..." && cp *.iso /src
