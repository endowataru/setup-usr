#!/bin/bash

set -eu

ROOT_PATH=`pwd`
SOURCE_PATH=$ROOT_PATH/src
INSTALL_PATH=$ROOT_PATH/local/stow

STOW_VERSION=2.2.2
GIT_VERSION=2.7.0
PYTHON_VERSION=3.5.1
CMAKE_MAJOR_VERSION=3.4
CMAKE_MINOR_VERSION=2
CMAKE_VERSION=$CMAKE_MAJOR_VERSION.$CMAKE_MINOR_VERSION

STOW=$ROOT_PATH/bin/stow
GIT=$ROOT_PATH/local/bin/git

mkdir $SOURCE_PATH || true

# Install Stow

cd $SOURCE_PATH
wget -c http://ftp.gnu.org/gnu/stow/stow-$STOW_VERSION.tar.gz
tar xvf stow-$STOW_VERSION.tar.gz
cd stow-$STOW_VERSION
mkdir build || true
cd build
../configure --prefix=$ROOT_PATH
make
make install

# Git

cd $SOURCE_PATH
wget -c https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.xz
tar xvf git-$GIT_VERSION.tar.xz
cd git-$GIT_VERSION
make configure
./configure --prefix=$INSTALL_PATH/git-$GIT_VERSION
make install
cd $INSTALL_PATH
$STOW -v git-$GIT_VERSION

# Vim

cd $SOURCE_PATH
git clone https://github.com/vim/vim.git || true
cd vim
git checkout master
git pull
cd src
make distclean || true
./configure --prefix=$INSTALL_PATH/vim-master
make
make install
cd $INSTALL_PATH
$STOW -v vim-master

# Python

cd $SOURCE_PATH
wget -c https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz
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
wget -c https://cmake.org/files/v$CMAKE_MAJOR_VERSION/cmake-$CMAKE_VERSION.tar.gz
tar xvf cmake-$CMAKE_VERSION.tar.gz
cd cmake-$CMAKE_VERSION
./bootstrap --prefix=$INSTALL_PATH/cmake-$CMAKE_VERSION
make
make install
cd $INSTALL_PATH
$STOW -v cmake-$CMAKE_VERSION

