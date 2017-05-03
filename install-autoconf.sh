#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf autoconf-$AUTOCONF_VERSION.tar.xz

cd autoconf-$AUTOCONF_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/autoconf-$AUTOCONF_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v autoconf-$AUTOCONF_VERSION

