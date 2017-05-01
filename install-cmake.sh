#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH
tar xvf cmake-$CMAKE_VERSION.tar.gz

cd cmake-$CMAKE_VERSION
./bootstrap --prefix=$INSTALL_PATH/cmake-$CMAKE_VERSION \
    -- -DCMAKE_USE_OPENSSL=ON
make
make install

cd $INSTALL_PATH
$STOW -v cmake-$CMAKE_VERSION

