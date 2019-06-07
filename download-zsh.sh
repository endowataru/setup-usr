#!/bin/bash

set -eu

source ./config.sh

cd $SOURCE_PATH

wget -c http://downloads.sourceforge.net/project/zsh/zsh/$ZSH_VERSION/zsh-$ZSH_VERSION.tar.xz
wget -c http://downloads.sourceforge.net/project/zsh/zsh-doc/$ZSH_VERSION/zsh-$ZSH_VERSION-doc.tar.xz

