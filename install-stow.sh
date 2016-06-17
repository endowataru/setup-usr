#!/bin/bash

set -eu

source config.sh

# Install Stow

cd $SOURCE_PATH
tar xvf stow-$STOW_VERSION.tar.gz
cd stow-$STOW_VERSION
mkdir build || true
cd build
../configure --prefix=$ROOT_PATH
make
make install

