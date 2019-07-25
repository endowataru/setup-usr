#!/bin/bash

set -eu

source config.sh

cd $SOURCE_PATH
wget -c https://ftp.gnu.org/pub/gnu/gettext/gettext-$GETTEXT_VERSION.tar.gz

