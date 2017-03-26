#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
git clone https://github.com/neovim/neovim || true
cd neovim
git checkout master
git pull

NEOVIM_HASH=`git rev-parse --short HEAD`
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$INSTALL_PATH/neovim-$NEOVIM_HASH"
make install

cd $INSTALL_PATH
$STOW -v neovim-$NEOVIM_HASH
#
#
#tar xvf zsh-$ZSH_VERSION.tar.xz
#cd zsh-$ZSH_VERSION
#mkdir build || true
#cd build
#../configure --prefix=$INSTALL_PATH/zsh-$ZSH_VERSION
#make
#make install
#cd $INSTALL_PATH
#$STOW -v zsh-$ZSH_VERSION

