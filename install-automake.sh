#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf automake-$AUTOMAKE_VERSION.tar.xz

cd automake-$AUTOMAKE_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/automake-$AUTOMAKE_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v automake-$AUTOMAKE_VERSION

