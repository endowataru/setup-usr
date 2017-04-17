#!/bin/bash

set -eu

source config.sh

if [ $# -eq 1 ]; then
    GCC_VERSION=$1
fi

cd $SOURCE_PATH
tar xvf gcc-$GCC_VERSION.tar.bz2
cd gcc-$GCC_VERSION
mkdir build || true
cd build
../configure --prefix=$ROOT_PATH/gcc-$GCC_VERSION --disable-multilib --enable-bootstrap
make
make install
cd $INSTALL_PATH
$STOW -v gcc-$ZSH_VERSION

