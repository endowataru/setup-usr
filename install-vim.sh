#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH/vim/src
VIM_HASH=`git rev-parse --short HEAD`

make distclean || true
./configure --prefix=$INSTALL_PATH/vim-$VIM_HASH
make
make install

cd $INSTALL_PATH
$STOW -v vim-$VIM_HASH

