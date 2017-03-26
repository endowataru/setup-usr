#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

wget -c https://www.kernel.org/pub/software/scm/git/git-$GIT_VERSION.tar.xz

