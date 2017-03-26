#!/bin/bash

set -eu

source ./config.sh

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

