#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
wget -c http://ftp.jaist.ac.jp/pub/GNU/autoconf/autoconf-$AUTOCONF_VERSION.tar.xz

