#!/bin/bash

set -eu

ROOT_PATH=`pwd`
SOURCE_PATH=$ROOT_PATH/src
INSTALL_PATH=$ROOT_PATH/local/stow

STOW_VERSION=2.2.2
GIT_VERSION=2.7.2
PYTHON_VERSION=3.5.1
CMAKE_MAJOR_VERSION=3.4
CMAKE_MINOR_VERSION=3
CMAKE_VERSION=$CMAKE_MAJOR_VERSION.$CMAKE_MINOR_VERSION
ZSH_VERSION=5.2

STOW=$ROOT_PATH/bin/stow
GIT=$ROOT_PATH/local/bin/git

