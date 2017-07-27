#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
tar xvf libevent-$LIBEVENT_VERSION.tar.gz

cd libevent-$LIBEVENT_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/libevent-$LIBEVENT_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v libevent-$LIBEVENT_VERSION

