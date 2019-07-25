#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf gettext-$GETTEXT_VERSION.tar.gz

cd gettext-$GETTEXT_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/gettext-$GETTEXT_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v gettext-$GETTEXT_VERSION

