#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH
tar xvf zsh-$ZSH_VERSION.tar.xz
tar xvf zsh-$ZSH_VERSION-doc.tar.xz
cd zsh-$ZSH_VERSION
# TODO: use out-of-source build (need to copy Doc/)
./configure --prefix=$INSTALL_PATH/zsh-$ZSH_VERSION
make
make install
cd $INSTALL_PATH
$STOW -v zsh-$ZSH_VERSION

