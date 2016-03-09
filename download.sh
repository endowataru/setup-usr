#!/bin/bash

set -eu

source config.sh

mkdir $SOURCE_PATH || true

cd $SOURCE_PATH

# Stow
wget -c http://ftp.gnu.org/gnu/stow/stow-$STOW_VERSION.tar.gz

# Git
wget -c https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.xz

# Vim
git clone https://github.com/vim/vim.git || true
cd vim
git checkout master && git pull

cd $SOURCE_PATH

# Python
wget -c https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz

# CMake
# TODO: remove --no-check-certificate
wget --no-check-certificate -c https://cmake.org/files/v$CMAKE_MAJOR_VERSION/cmake-$CMAKE_VERSION.tar.gz

# Zsh
wget -c http://downloads.sourceforge.net/project/zsh/zsh/$ZSH_VERSION/zsh-$ZSH_VERSION.tar.xz

