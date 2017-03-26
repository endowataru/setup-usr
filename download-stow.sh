#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

wget -c http://ftp.gnu.org/gnu/stow/stow-$STOW_VERSION.tar.gz

