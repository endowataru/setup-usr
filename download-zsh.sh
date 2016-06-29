#!/bin/bash

set -eu

source ./config.sh

mkdir $SOURCE_PATH || true
cd $SOURCE_PATH

wget -c http://downloads.sourceforge.net/project/zsh/zsh/$ZSH_VERSION/zsh-$ZSH_VERSION.tar.xz

