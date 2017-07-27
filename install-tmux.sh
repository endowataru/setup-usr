#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH
tar xvf tmux-$TMUX_VERSION.tar.gz

cd tmux-$TMUX_VERSION
mkdir build || true
cd build
PKG_CONFIG_PATH=$ROOT_PATH/local/lib/pkgconfig ../configure --prefix=$INSTALL_PATH/tmux-$TMUX_VERSION
make
make install

cd $INSTALL_PATH
$STOW -v tmux-$TMUX_VERSION

