#!/bin/bash

set -eu

source ./config.sh

# Git

cd $SOURCE_PATH
tar xvf git-$GIT_VERSION.tar.xz
cd git-$GIT_VERSION
make configure
./configure --prefix=$INSTALL_PATH/git-$GIT_VERSION
make install
cd $INSTALL_PATH
$STOW -v git-$GIT_VERSION

# Vim

cd $SOURCE_PATH/vim/src
make distclean || true
./configure --prefix=$INSTALL_PATH/vim-master
make
make install
cd $INSTALL_PATH
$STOW -v vim-master

# Python

cd $SOURCE_PATH
tar xvf Python-$PYTHON_VERSION.tar.xz
cd Python-$PYTHON_VERSION
mkdir build || true
cd build
../configure --prefix=$INSTALL_PATH/python-$PYTHON_VERSION
make
make install
cd $INSTALL_PATH
$STOW -v python-$PYTHON_VERSION

# CMake

cd $SOURCE_PATH
tar xvf cmake-$CMAKE_VERSION.tar.gz
cd cmake-$CMAKE_VERSION
./bootstrap --prefix=$INSTALL_PATH/cmake-$CMAKE_VERSION
make
make install
cd $INSTALL_PATH
$STOW -v cmake-$CMAKE_VERSION

