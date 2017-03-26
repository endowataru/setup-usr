#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

# TODO: remove --no-check-certificate
#wget --no-check-certificate -c https://cmake.org/files/v$CMAKE_MAJOR_VERSION/cmake-$CMAKE_VERSION.tar.gz
wget -c https://cmake.org/files/v$CMAKE_MAJOR_VERSION/cmake-$CMAKE_VERSION.tar.gz

