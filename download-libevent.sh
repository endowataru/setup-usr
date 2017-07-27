#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
wget -c https://github.com/libevent/libevent/releases/download/release-$LIBEVENT_VERSION/libevent-$LIBEVENT_VERSION.tar.gz

