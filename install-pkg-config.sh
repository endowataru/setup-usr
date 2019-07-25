#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf pkg-config-$PKGCONFIG_VERSION.tar.gz

cd pkg-config-$PKGCONFIG_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/pkg-config-$PKGCONFIG_VERSION --with-internal-glib
make
make install

cd $INSTALL_PATH
$STOW -v pkg-config-$PKGCONFIG_VERSION

