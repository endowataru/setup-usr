#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
wget -c http://ftp.jaist.ac.jp/pub/GNU/automake/automake-$AUTOMAKE_VERSION.tar.xz

