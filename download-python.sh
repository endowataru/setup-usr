#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

wget -c https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tar.xz

