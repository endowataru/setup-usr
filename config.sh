#!/bin/bash

set -eu

ROOT_PATH=`pwd`
SOURCE_PATH=$ROOT_PATH/src
INSTALL_PATH=$ROOT_PATH/local/stow

STOW_VERSION=2.2.2
GIT_VERSION=2.21.0
PYTHON_VERSION=3.7.3
CMAKE_MAJOR_VERSION=3.14
CMAKE_MINOR_VERSION=5
CMAKE_VERSION=$CMAKE_MAJOR_VERSION.$CMAKE_MINOR_VERSION
ZSH_VERSION=5.4.2
TMUX_VERSION=2.9a
LIBEVENT_VERSION=2.1.8-stable
GCC_VERSION=7.2.0
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15
LIBTOOL_VERSION=2.4.6

STOW=$ROOT_PATH/bin/stow
GIT=$ROOT_PATH/local/bin/git

INSTALL_LIST="stow cmake git nvim python zsh"

mkdir $SOURCE_PATH || true

