#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH
tar xvf git-$GIT_VERSION.tar.xz

cd git-$GIT_VERSION
make configure
./configure --prefix=$INSTALL_PATH/git-$GIT_VERSION
make install

cd $INSTALL_PATH
$STOW -v git-$GIT_VERSION

