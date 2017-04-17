#!/bin/bash

set -eu

source config.sh

if [ $# -eq 1 ]; then
    GCC_VERSION=$1
fi

cd $SOURCE_PATH
wget -c http://ftp.jaist.ac.jp/pub/GNU/gcc/gcc-$GCC_VERSION/gcc-$GCC_VERSION.tar.bz2

