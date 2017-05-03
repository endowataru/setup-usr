#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf libtool-$LIBTOOL_VERSION.tar.xz

cd libtool-$LIBTOOL_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/libtool-$LIBTOOL_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v libtool-$LIBTOOL_VERSION

