#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH/neovim
NEOVIM_HASH=`git rev-parse --short HEAD`
rm -r build || true
make clean
make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$INSTALL_PATH/neovim-$NEOVIM_HASH"
make install

cd $INSTALL_PATH
$STOW -v neovim-$NEOVIM_HASH

