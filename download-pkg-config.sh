#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
wget -c https://pkg-config.freedesktop.org/releases/pkg-config-$PKGCONFIG_VERSION.tar.gz

